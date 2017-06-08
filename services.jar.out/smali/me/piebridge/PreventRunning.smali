.class public Lme/piebridge/PreventRunning;
.super Ljava/lang/Object;
.source "PreventRunning.java"

# interfaces
.implements Lme/piebridge/PreventRunningHook;


# static fields
.field private static APKS:[Ljava/lang/String; = null

.field private static final TAG:Ljava/lang/String; = "Prevent"

.field private static final VERSION:I = 0x1339f96


# instance fields
.field private mPreventRunning:Lme/piebridge/PreventRunningHook;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 28
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    .line 29
    const-string/jumbo v1, "/data/app/me.piebridge.forcestopgb-1/base.apk"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 30
    const-string/jumbo v1, "/data/app/me.piebridge.forcestopgb-2/base.apk"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 31
    const-string/jumbo v1, "/data/app/me.piebridge.forcestopgb-3/base.apk"

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 32
    const-string/jumbo v1, "/data/app/me.piebridge.forcestopgb-1.apk"

    const/4 v2, 0x3

    aput-object v1, v0, v2

    .line 33
    const-string/jumbo v1, "/data/app/me.piebridge.forcestopgb-2.apk"

    const/4 v2, 0x4

    aput-object v1, v0, v2

    .line 34
    const-string/jumbo v1, "/data/app/me.piebridge.forcestopgb-3.apk"

    const/4 v2, 0x5

    aput-object v1, v0, v2

    .line 35
    const-string/jumbo v1, "/system/app/ForceStop/ForceStop.apk"

    const/4 v2, 0x6

    aput-object v1, v0, v2

    .line 28
    sput-object v0, Lme/piebridge/PreventRunning;->APKS:[Ljava/lang/String;

    .line 20
    return-void
.end method

.method public constructor <init>()V
    .locals 6

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    sget-object v3, Lme/piebridge/PreventRunning;->APKS:[Ljava/lang/String;

    const/4 v2, 0x0

    array-length v4, v3

    :goto_0
    if-ge v2, v4, :cond_0

    aget-object v0, v3, v2

    .line 40
    .local v0, "apk":Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 41
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-direct {p0, v1}, Lme/piebridge/PreventRunning;->initPreventRunning(Ljava/io/File;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 38
    .end local v0    # "apk":Ljava/lang/String;
    .end local v1    # "file":Ljava/io/File;
    :cond_0
    return-void

    .line 39
    .restart local v0    # "apk":Ljava/lang/String;
    .restart local v1    # "file":Ljava/io/File;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method private initPreventRunning(Ljava/io/File;)Z
    .locals 9
    .param p1, "apk"    # Ljava/io/File;

    .prologue
    .line 49
    :try_start_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    .line 50
    .local v1, "currentClassLoader":Ljava/lang/ClassLoader;
    new-instance v0, Ldalvik/system/DexClassLoader;

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "/cache"

    const/4 v8, 0x0

    invoke-direct {v0, v6, v7, v8, v1}, Ldalvik/system/DexClassLoader;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)V

    .line 51
    .local v0, "classLoader":Ljava/lang/ClassLoader;
    const-string/jumbo v6, "Prevent"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "loading PreventRunning(20160406) from "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    const-string/jumbo v6, "me.piebridge.prevent.framework.PreventRunning"

    invoke-virtual {v0, v6}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lme/piebridge/PreventRunningHook;

    iput-object v6, p0, Lme/piebridge/PreventRunning;->mPreventRunning:Lme/piebridge/PreventRunningHook;

    .line 53
    invoke-direct {p0}, Lme/piebridge/PreventRunning;->setVersion()V

    .line 54
    invoke-direct {p0}, Lme/piebridge/PreventRunning;->setMethod()V
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 55
    const/4 v6, 0x1

    return v6

    .line 62
    .end local v0    # "classLoader":Ljava/lang/ClassLoader;
    .end local v1    # "currentClassLoader":Ljava/lang/ClassLoader;
    :catch_0
    move-exception v5

    .line 63
    .local v5, "t":Ljava/lang/Throwable;
    const-string/jumbo v6, "Prevent"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "cannot load PreventRunning from "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 65
    .end local v5    # "t":Ljava/lang/Throwable;
    :goto_0
    const/4 v6, 0x0

    return v6

    .line 60
    :catch_1
    move-exception v3

    .line 61
    .local v3, "e":Ljava/lang/IllegalAccessException;
    const-string/jumbo v6, "Prevent"

    const-string/jumbo v7, "cannot access class"

    invoke-static {v6, v7, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 58
    .end local v3    # "e":Ljava/lang/IllegalAccessException;
    :catch_2
    move-exception v4

    .line 59
    .local v4, "e":Ljava/lang/InstantiationException;
    const-string/jumbo v6, "Prevent"

    const-string/jumbo v7, "cannot instance class"

    invoke-static {v6, v7, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 56
    .end local v4    # "e":Ljava/lang/InstantiationException;
    :catch_3
    move-exception v2

    .line 57
    .local v2, "e":Ljava/lang/ClassNotFoundException;
    const-string/jumbo v6, "Prevent"

    const-string/jumbo v7, "cannot find class"

    invoke-static {v6, v7, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private setMethod()V
    .locals 9

    .prologue
    .line 173
    :try_start_0
    iget-object v4, p0, Lme/piebridge/PreventRunning;->mPreventRunning:Lme/piebridge/PreventRunningHook;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    const-string/jumbo v5, "setMethod"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Class;

    const-class v7, Ljava/lang/String;

    const/4 v8, 0x0

    aput-object v7, v6, v8

    invoke-virtual {v4, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 174
    .local v3, "method":Ljava/lang/reflect/Method;
    iget-object v4, p0, Lme/piebridge/PreventRunning;->mPreventRunning:Lme/piebridge/PreventRunningHook;

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const-string/jumbo v6, "native"

    const/4 v7, 0x0

    aput-object v6, v5, v7

    invoke-virtual {v3, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    .line 171
    .end local v3    # "method":Ljava/lang/reflect/Method;
    :goto_0
    return-void

    .line 179
    :catch_0
    move-exception v0

    .line 180
    .local v0, "e":Ljava/lang/IllegalAccessException;
    const-string/jumbo v4, "Prevent"

    const-string/jumbo v5, "illegal access"

    invoke-static {v4, v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 177
    .end local v0    # "e":Ljava/lang/IllegalAccessException;
    :catch_1
    move-exception v2

    .line 178
    .local v2, "e":Ljava/lang/reflect/InvocationTargetException;
    const-string/jumbo v4, "Prevent"

    const-string/jumbo v5, "cannot invoke target"

    invoke-static {v4, v5, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 175
    .end local v2    # "e":Ljava/lang/reflect/InvocationTargetException;
    :catch_2
    move-exception v1

    .line 176
    .local v1, "e":Ljava/lang/NoSuchMethodException;
    const-string/jumbo v4, "Prevent"

    const-string/jumbo v5, "cannot find method"

    invoke-static {v4, v5, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private setVersion()V
    .locals 9

    .prologue
    .line 160
    :try_start_0
    iget-object v4, p0, Lme/piebridge/PreventRunning;->mPreventRunning:Lme/piebridge/PreventRunningHook;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    const-string/jumbo v5, "setVersion"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Class;

    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v8, 0x0

    aput-object v7, v6, v8

    invoke-virtual {v4, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 161
    .local v3, "method":Ljava/lang/reflect/Method;
    iget-object v4, p0, Lme/piebridge/PreventRunning;->mPreventRunning:Lme/piebridge/PreventRunningHook;

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const v6, 0x1339f96

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v7, 0x0

    aput-object v6, v5, v7

    invoke-virtual {v3, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    .line 158
    .end local v3    # "method":Ljava/lang/reflect/Method;
    :goto_0
    return-void

    .line 166
    :catch_0
    move-exception v0

    .line 167
    .local v0, "e":Ljava/lang/IllegalAccessException;
    const-string/jumbo v4, "Prevent"

    const-string/jumbo v5, "illegal access"

    invoke-static {v4, v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 164
    .end local v0    # "e":Ljava/lang/IllegalAccessException;
    :catch_1
    move-exception v2

    .line 165
    .local v2, "e":Ljava/lang/reflect/InvocationTargetException;
    const-string/jumbo v4, "Prevent"

    const-string/jumbo v5, "cannot invoke target"

    invoke-static {v4, v5, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 162
    .end local v2    # "e":Ljava/lang/reflect/InvocationTargetException;
    :catch_2
    move-exception v1

    .line 163
    .local v1, "e":Ljava/lang/NoSuchMethodException;
    const-string/jumbo v4, "Prevent"

    const-string/jumbo v5, "cannot find method"

    invoke-static {v4, v5, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method


# virtual methods
.method public hookStartProcessLocked(Landroid/content/Context;Landroid/content/pm/ApplicationInfo;Ljava/lang/String;Landroid/content/ComponentName;)Z
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "info"    # Landroid/content/pm/ApplicationInfo;
    .param p3, "hostingType"    # Ljava/lang/String;
    .param p4, "hostingName"    # Landroid/content/ComponentName;

    .prologue
    .line 146
    iget-object v0, p0, Lme/piebridge/PreventRunning;->mPreventRunning:Lme/piebridge/PreventRunningHook;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lme/piebridge/PreventRunning;->mPreventRunning:Lme/piebridge/PreventRunningHook;

    invoke-interface {v0, p1, p2, p3, p4}, Lme/piebridge/PreventRunningHook;->hookStartProcessLocked(Landroid/content/Context;Landroid/content/pm/ApplicationInfo;Ljava/lang/String;Landroid/content/ComponentName;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isExcludingStopped(Ljava/lang/String;)Z
    .locals 1
    .param p1, "action"    # Ljava/lang/String;

    .prologue
    .line 140
    iget-object v0, p0, Lme/piebridge/PreventRunning;->mPreventRunning:Lme/piebridge/PreventRunningHook;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lme/piebridge/PreventRunning;->mPreventRunning:Lme/piebridge/PreventRunningHook;

    invoke-interface {v0, p1}, Lme/piebridge/PreventRunningHook;->isExcludingStopped(Ljava/lang/String;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public match(ILjava/lang/Object;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Ljava/util/Set;)I
    .locals 8
    .param p1, "match"    # I
    .param p2, "filter"    # Ljava/lang/Object;
    .param p3, "action"    # Ljava/lang/String;
    .param p4, "type"    # Ljava/lang/String;
    .param p5, "scheme"    # Ljava/lang/String;
    .param p6, "data"    # Landroid/net/Uri;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Landroid/net/Uri;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 151
    .local p7, "categories":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    iget-object v0, p0, Lme/piebridge/PreventRunning;->mPreventRunning:Lme/piebridge/PreventRunningHook;

    if-eqz v0, :cond_0

    .line 152
    iget-object v0, p0, Lme/piebridge/PreventRunning;->mPreventRunning:Lme/piebridge/PreventRunningHook;

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    move-object v7, p7

    invoke-interface/range {v0 .. v7}, Lme/piebridge/PreventRunningHook;->match(ILjava/lang/Object;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Ljava/util/Set;)I

    move-result v0

    return v0

    .line 154
    :cond_0
    return p1
.end method

.method public onAppDied(Ljava/lang/Object;)V
    .locals 1
    .param p1, "processRecord"    # Ljava/lang/Object;

    .prologue
    .line 105
    iget-object v0, p0, Lme/piebridge/PreventRunning;->mPreventRunning:Lme/piebridge/PreventRunningHook;

    if-eqz v0, :cond_0

    .line 106
    iget-object v0, p0, Lme/piebridge/PreventRunning;->mPreventRunning:Lme/piebridge/PreventRunningHook;

    invoke-interface {v0, p1}, Lme/piebridge/PreventRunningHook;->onAppDied(Ljava/lang/Object;)V

    .line 104
    :cond_0
    return-void
.end method

.method public onBroadcastIntent(Landroid/content/Intent;)V
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 77
    iget-object v0, p0, Lme/piebridge/PreventRunning;->mPreventRunning:Lme/piebridge/PreventRunningHook;

    if-eqz v0, :cond_0

    .line 78
    iget-object v0, p0, Lme/piebridge/PreventRunning;->mPreventRunning:Lme/piebridge/PreventRunningHook;

    invoke-interface {v0, p1}, Lme/piebridge/PreventRunningHook;->onBroadcastIntent(Landroid/content/Intent;)V

    .line 76
    :cond_0
    return-void
.end method

.method public onCleanUpRemovedTask(Ljava/lang/String;)V
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 84
    iget-object v0, p0, Lme/piebridge/PreventRunning;->mPreventRunning:Lme/piebridge/PreventRunningHook;

    if-eqz v0, :cond_0

    .line 85
    iget-object v0, p0, Lme/piebridge/PreventRunning;->mPreventRunning:Lme/piebridge/PreventRunningHook;

    invoke-interface {v0, p1}, Lme/piebridge/PreventRunningHook;->onCleanUpRemovedTask(Ljava/lang/String;)V

    .line 83
    :cond_0
    return-void
.end method

.method public onDestroyActivity(Ljava/lang/Object;)V
    .locals 1
    .param p1, "activityRecord"    # Ljava/lang/Object;

    .prologue
    .line 133
    iget-object v0, p0, Lme/piebridge/PreventRunning;->mPreventRunning:Lme/piebridge/PreventRunningHook;

    if-eqz v0, :cond_0

    .line 134
    iget-object v0, p0, Lme/piebridge/PreventRunning;->mPreventRunning:Lme/piebridge/PreventRunningHook;

    invoke-interface {v0, p1}, Lme/piebridge/PreventRunningHook;->onDestroyActivity(Ljava/lang/Object;)V

    .line 132
    :cond_0
    return-void
.end method

.method public onLaunchActivity(Ljava/lang/Object;)V
    .locals 1
    .param p1, "activityRecord"    # Ljava/lang/Object;

    .prologue
    .line 112
    iget-object v0, p0, Lme/piebridge/PreventRunning;->mPreventRunning:Lme/piebridge/PreventRunningHook;

    if-eqz v0, :cond_0

    .line 113
    iget-object v0, p0, Lme/piebridge/PreventRunning;->mPreventRunning:Lme/piebridge/PreventRunningHook;

    invoke-interface {v0, p1}, Lme/piebridge/PreventRunningHook;->onLaunchActivity(Ljava/lang/Object;)V

    .line 111
    :cond_0
    return-void
.end method

.method public onMoveActivityTaskToBack(Ljava/lang/String;)V
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 98
    iget-object v0, p0, Lme/piebridge/PreventRunning;->mPreventRunning:Lme/piebridge/PreventRunningHook;

    if-eqz v0, :cond_0

    .line 99
    iget-object v0, p0, Lme/piebridge/PreventRunning;->mPreventRunning:Lme/piebridge/PreventRunningHook;

    invoke-interface {v0, p1}, Lme/piebridge/PreventRunningHook;->onMoveActivityTaskToBack(Ljava/lang/String;)V

    .line 97
    :cond_0
    return-void
.end method

.method public onResumeActivity(Ljava/lang/Object;)V
    .locals 1
    .param p1, "activityRecord"    # Ljava/lang/Object;

    .prologue
    .line 119
    iget-object v0, p0, Lme/piebridge/PreventRunning;->mPreventRunning:Lme/piebridge/PreventRunningHook;

    if-eqz v0, :cond_0

    .line 120
    iget-object v0, p0, Lme/piebridge/PreventRunning;->mPreventRunning:Lme/piebridge/PreventRunningHook;

    invoke-interface {v0, p1}, Lme/piebridge/PreventRunningHook;->onResumeActivity(Ljava/lang/Object;)V

    .line 118
    :cond_0
    return-void
.end method

.method public onStartHomeActivity(Ljava/lang/String;)V
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 91
    iget-object v0, p0, Lme/piebridge/PreventRunning;->mPreventRunning:Lme/piebridge/PreventRunningHook;

    if-eqz v0, :cond_0

    .line 92
    iget-object v0, p0, Lme/piebridge/PreventRunning;->mPreventRunning:Lme/piebridge/PreventRunningHook;

    invoke-interface {v0, p1}, Lme/piebridge/PreventRunningHook;->onStartHomeActivity(Ljava/lang/String;)V

    .line 90
    :cond_0
    return-void
.end method

.method public onUserLeavingActivity(Ljava/lang/Object;)V
    .locals 1
    .param p1, "activityRecord"    # Ljava/lang/Object;

    .prologue
    .line 126
    iget-object v0, p0, Lme/piebridge/PreventRunning;->mPreventRunning:Lme/piebridge/PreventRunningHook;

    if-eqz v0, :cond_0

    .line 127
    iget-object v0, p0, Lme/piebridge/PreventRunning;->mPreventRunning:Lme/piebridge/PreventRunningHook;

    invoke-interface {v0, p1}, Lme/piebridge/PreventRunningHook;->onUserLeavingActivity(Ljava/lang/Object;)V

    .line 125
    :cond_0
    return-void
.end method

.method public setSender(Ljava/lang/String;)V
    .locals 1
    .param p1, "sender"    # Ljava/lang/String;

    .prologue
    .line 70
    iget-object v0, p0, Lme/piebridge/PreventRunning;->mPreventRunning:Lme/piebridge/PreventRunningHook;

    if-eqz v0, :cond_0

    .line 71
    iget-object v0, p0, Lme/piebridge/PreventRunning;->mPreventRunning:Lme/piebridge/PreventRunningHook;

    invoke-interface {v0, p1}, Lme/piebridge/PreventRunningHook;->setSender(Ljava/lang/String;)V

    .line 69
    :cond_0
    return-void
.end method
