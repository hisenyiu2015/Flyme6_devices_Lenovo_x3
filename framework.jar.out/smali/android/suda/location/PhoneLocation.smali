.class public final Landroid/suda/location/PhoneLocation;
.super Ljava/lang/Object;
.source "PhoneLocation.java"


# static fields
.field private static LIBPATH:Ljava/lang/String;

.field private static familyArray:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 27
    const/16 v0, 0x13

    new-array v0, v0, [Ljava/lang/String;

    .line 28
    const-string/jumbo v1, "751"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string/jumbo v1, "752"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string/jumbo v1, "753"

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 29
    const-string/jumbo v1, "754"

    const/4 v2, 0x3

    aput-object v1, v0, v2

    const-string/jumbo v1, "755"

    const/4 v2, 0x4

    aput-object v1, v0, v2

    const-string/jumbo v1, "756"

    const/4 v2, 0x5

    aput-object v1, v0, v2

    .line 30
    const-string/jumbo v1, "757"

    const/4 v2, 0x6

    aput-object v1, v0, v2

    const-string/jumbo v1, "758"

    const/4 v2, 0x7

    aput-object v1, v0, v2

    const-string/jumbo v1, "759"

    const/16 v2, 0x8

    aput-object v1, v0, v2

    .line 31
    const-string/jumbo v1, "760"

    const/16 v2, 0x9

    aput-object v1, v0, v2

    const-string/jumbo v1, "761"

    const/16 v2, 0xa

    aput-object v1, v0, v2

    const-string/jumbo v1, "762"

    const/16 v2, 0xb

    aput-object v1, v0, v2

    .line 32
    const-string/jumbo v1, "763"

    const/16 v2, 0xc

    aput-object v1, v0, v2

    const-string/jumbo v1, "764"

    const/16 v2, 0xd

    aput-object v1, v0, v2

    const-string/jumbo v1, "765"

    const/16 v2, 0xe

    aput-object v1, v0, v2

    .line 33
    const-string/jumbo v1, "766"

    const/16 v2, 0xf

    aput-object v1, v0, v2

    const-string/jumbo v1, "767"

    const/16 v2, 0x10

    aput-object v1, v0, v2

    const-string/jumbo v1, "768"

    const/16 v2, 0x11

    aput-object v1, v0, v2

    .line 34
    const-string/jumbo v1, "769"

    const/16 v2, 0x12

    aput-object v1, v0, v2

    .line 27
    sput-object v0, Landroid/suda/location/PhoneLocation;->familyArray:[Ljava/lang/String;

    .line 37
    const-string/jumbo v0, "suda-phoneloc-jni"

    sput-object v0, Landroid/suda/location/PhoneLocation;->LIBPATH:Ljava/lang/String;

    .line 40
    sget-object v0, Landroid/suda/location/PhoneLocation;->LIBPATH:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 25
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static declared-synchronized doGetLocationFromPhone(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "number"    # Ljava/lang/String;

    .prologue
    const-class v1, Landroid/suda/location/PhoneLocation;

    monitor-enter v1

    .line 46
    :try_start_0
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    monitor-exit v1

    return-object v0

    .line 47
    :cond_0
    :try_start_1
    invoke-static {p0}, Landroid/suda/location/PhoneLocation;->getPhoneLocationJni(Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static getCityFromPhone(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "number"    # Ljava/lang/String;

    .prologue
    .line 74
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 75
    const-string/jumbo v1, ""

    return-object v1

    .line 77
    :cond_0
    const-string/jumbo v1, "(?:-| )"

    const-string/jumbo v2, ""

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v1, v2}, Landroid/suda/location/PhoneLocation;->getPosFromPhone(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 78
    .local v0, "phoneLocation":Ljava/lang/String;
    invoke-static {p0}, Landroid/suda/location/PhoneLocation;->getFamily(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {p0}, Landroid/suda/location/PhoneLocation;->getFamily(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .end local v0    # "phoneLocation":Ljava/lang/String;
    :cond_1
    return-object v0
.end method

.method public static getCodeFromPhone(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "number"    # Ljava/lang/String;

    .prologue
    .line 70
    const/4 v0, 0x0

    invoke-static {p0, v0}, Landroid/suda/location/PhoneLocation;->getPosFromPhone(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getFamily(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "number"    # Ljava/lang/String;

    .prologue
    .line 61
    sget-object v2, Landroid/suda/location/PhoneLocation;->familyArray:[Ljava/lang/String;

    const/4 v1, 0x0

    array-length v3, v2

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v0, v2, v1

    .line 62
    .local v0, "temp":Ljava/lang/String;
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 63
    const-string/jumbo v1, "\u4eb2\u60c5\u53f7\u7801"

    return-object v1

    .line 61
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 66
    .end local v0    # "temp":Ljava/lang/String;
    :cond_1
    const/4 v1, 0x0

    return-object v1
.end method

.method private static native getPhoneLocationJni(Ljava/lang/String;)Ljava/lang/String;
.end method

.method private static getPosFromPhone(Ljava/lang/String;I)Ljava/lang/String;
    .locals 4
    .param p0, "number"    # Ljava/lang/String;
    .param p1, "i"    # I

    .prologue
    .line 51
    invoke-static {p0}, Landroid/suda/location/PhoneLocation;->doGetLocationFromPhone(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 52
    .local v0, "s":Ljava/lang/String;
    const/4 v1, 0x0

    .line 53
    .local v1, "ss":[Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 54
    const-string/jumbo v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 55
    .local v1, "ss":[Ljava/lang/String;
    array-length v2, v1

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    aget-object v2, v1, p1

    return-object v2

    .line 57
    .end local v1    # "ss":[Ljava/lang/String;
    :cond_0
    const-string/jumbo v2, ""

    return-object v2
.end method
