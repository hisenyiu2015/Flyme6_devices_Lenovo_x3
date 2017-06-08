.class public Landroid/suda/lunar/Lunar;
.super Ljava/lang/Object;
.source "Lunar.java"


# static fields
.field private static final lunarInfo:[J


# instance fields
.field private chineseDateFormat:Ljava/text/SimpleDateFormat;

.field private chineseNumber:[Ljava/lang/String;

.field private day:I

.field private leap:Z

.field private lunarMonthName:[Ljava/lang/String;

.field private mCalendar:Ljava/util/Calendar;

.field private month:I

.field private year:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 36
    const/16 v0, 0x96

    new-array v0, v0, [J

    fill-array-data v0, :array_0

    sput-object v0, Landroid/suda/lunar/Lunar;->lunarInfo:[J

    .line 25
    return-void

    .line 36
    :array_0
    .array-data 8
        0x4bd8
        0x4ae0
        0xa570
        0x54d5
        0xd260
        0xd950
        0x16554
        0x56a0
        0x9ad0
        0x55d2
        0x4ae0
        0xa5b6
        0xa4d0
        0xd250
        0x1d255
        0xb540
        0xd6a0
        0xada2
        0x95b0
        0x14977
        0x4970
        0xa4b0
        0xb4b5
        0x6a50
        0x6d40
        0x1ab54
        0x2b60
        0x9570
        0x52f2
        0x4970
        0x6566
        0xd4a0
        0xea50
        0x6e95
        0x5ad0
        0x2b60
        0x186e3
        0x92e0
        0x1c8d7
        0xc950
        0xd4a0
        0x1d8a6
        0xb550
        0x56a0
        0x1a5b4
        0x25d0
        0x92d0
        0xd2b2
        0xa950
        0xb557
        0x6ca0
        0xb550
        0x15355
        0x4da0
        0xa5d0
        0x14573
        0x52d0
        0xa9a8
        0xe950
        0x6aa0
        0xaea6
        0xab50
        0x4b60
        0xaae4
        0xa570
        0x5260
        0xf263
        0xd950
        0x5b57
        0x56a0
        0x96d0
        0x4dd5
        0x4ad0
        0xa4d0
        0xd4d4
        0xd250
        0xd558
        0xb540
        0xb5a0
        0x195a6
        0x95b0
        0x49b0
        0xa974
        0xa4b0
        0xb27a
        0x6a50
        0x6d40
        0xaf46
        0xab60
        0x9570
        0x4af5
        0x4970
        0x64b0
        0x74a3
        0xea50
        0x6b58
        0x55c0
        0xab60
        0x96d5
        0x92e0
        0xc960
        0xd954
        0xd4a0
        0xda50
        0x7552
        0x56a0
        0xabb7
        0x25d0
        0x92d0
        0xcab5
        0xa950
        0xb4a0
        0xbaa4
        0xad50
        0x55d9
        0x4ba0
        0xa5b0
        0x15176
        0x52b0
        0xa930
        0x7954
        0x6aa0
        0xad50
        0x5b52
        0x4b60
        0xa6e6
        0xa4e0
        0xd260
        0xea65
        0xd530
        0x5aa0
        0x76a3
        0x96d0
        0x4bd7
        0x4ad0
        0xa4d0
        0x1d0b6
        0xd250
        0xd520
        0xdd45
        0xb5a0
        0x56d0
        0x55b2
        0x49b0
        0xa577
        0xa4b0
        0xaa50
        0x1b255
        0x6d20
        0xada0
    .end array-data
.end method

.method public constructor <init>(Ljava/util/Calendar;)V
    .locals 20
    .param p1, "cal"    # Ljava/util/Calendar;

    .prologue
    .line 107
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 109
    const/4 v11, 0x0

    .line 110
    .local v11, "leapMonth":I
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/suda/lunar/Lunar;->mCalendar:Ljava/util/Calendar;

    .line 111
    sget-object v15, Landroid/suda/lunar/Constant;->CHINESE_NUMBER_CN:[Ljava/lang/String;

    move-object/from16 v0, p0

    iput-object v15, v0, Landroid/suda/lunar/Lunar;->chineseNumber:[Ljava/lang/String;

    .line 112
    sget-object v15, Landroid/suda/lunar/Constant;->LUNAR_MONTH_NAME_CN:[Ljava/lang/String;

    move-object/from16 v0, p0

    iput-object v15, v0, Landroid/suda/lunar/Lunar;->lunarMonthName:[Ljava/lang/String;

    .line 113
    const-string/jumbo v7, "yyyy\u5e74MM\u6708dd\u65e5"

    .line 114
    .local v7, "format1":Ljava/lang/String;
    new-instance v15, Ljava/text/SimpleDateFormat;

    invoke-direct {v15, v7}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iput-object v15, v0, Landroid/suda/lunar/Lunar;->chineseDateFormat:Ljava/text/SimpleDateFormat;

    .line 115
    const/4 v2, 0x0

    .line 117
    .local v2, "baseDate":Ljava/util/Date;
    :try_start_0
    const-string/jumbo v8, "1900\u5e741\u670831\u65e5"

    .line 118
    .local v8, "format2":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/suda/lunar/Lunar;->chineseDateFormat:Ljava/text/SimpleDateFormat;

    invoke-virtual {v15, v8}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 122
    .end local v2    # "baseDate":Ljava/util/Date;
    .end local v8    # "format2":Ljava/lang/String;
    :goto_0
    invoke-virtual/range {p1 .. p1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v15

    invoke-virtual {v15}, Ljava/util/Date;->getTime()J

    move-result-wide v16

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v18

    sub-long v16, v16, v18

    const-wide/32 v18, 0x5265c00

    div-long v16, v16, v18

    move-wide/from16 v0, v16

    long-to-int v13, v0

    .line 123
    .local v13, "offset":I
    add-int/lit8 v3, v13, 0x28

    .line 124
    .local v3, "dayCyl":I
    const/16 v12, 0xe

    .line 125
    .local v12, "monCyl":I
    const/4 v5, 0x0

    .line 126
    .local v5, "daysOfYear":I
    const/16 v10, 0x76c

    .local v10, "iYear":I
    :goto_1
    const/16 v15, 0x802

    if-ge v10, v15, :cond_0

    if-lez v13, :cond_0

    .line 127
    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Landroid/suda/lunar/Lunar;->yearDays(I)I

    move-result v5

    .line 128
    sub-int/2addr v13, v5

    .line 129
    add-int/lit8 v12, v12, 0xc

    .line 126
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 119
    .end local v3    # "dayCyl":I
    .end local v5    # "daysOfYear":I
    .end local v10    # "iYear":I
    .end local v12    # "monCyl":I
    .end local v13    # "offset":I
    .restart local v2    # "baseDate":Ljava/util/Date;
    :catch_0
    move-exception v6

    .line 120
    .local v6, "e":Ljava/text/ParseException;
    invoke-virtual {v6}, Ljava/text/ParseException;->printStackTrace()V

    goto :goto_0

    .line 131
    .end local v2    # "baseDate":Ljava/util/Date;
    .end local v6    # "e":Ljava/text/ParseException;
    .restart local v3    # "dayCyl":I
    .restart local v5    # "daysOfYear":I
    .restart local v10    # "iYear":I
    .restart local v12    # "monCyl":I
    .restart local v13    # "offset":I
    :cond_0
    if-gez v13, :cond_1

    .line 132
    add-int/2addr v13, v5

    .line 133
    add-int/lit8 v10, v10, -0x1

    .line 134
    add-int/lit8 v12, v12, -0xc

    .line 136
    :cond_1
    move-object/from16 v0, p0

    iput v10, v0, Landroid/suda/lunar/Lunar;->year:I

    .line 137
    add-int/lit16 v14, v10, -0x748

    .line 138
    .local v14, "yearCyl":I
    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Landroid/suda/lunar/Lunar;->leapMonth(I)I

    move-result v11

    .line 139
    const/4 v15, 0x0

    move-object/from16 v0, p0

    iput-boolean v15, v0, Landroid/suda/lunar/Lunar;->leap:Z

    .line 140
    const/4 v4, 0x0

    .line 141
    .local v4, "daysOfMonth":I
    const/4 v9, 0x1

    .local v9, "iMonth":I
    :goto_2
    const/16 v15, 0xd

    if-ge v9, v15, :cond_6

    if-lez v13, :cond_6

    .line 142
    if-lez v11, :cond_2

    add-int/lit8 v15, v11, 0x1

    if-ne v9, v15, :cond_2

    move-object/from16 v0, p0

    iget-boolean v15, v0, Landroid/suda/lunar/Lunar;->leap:Z

    if-eqz v15, :cond_5

    .line 147
    :cond_2
    move-object/from16 v0, p0

    iget v15, v0, Landroid/suda/lunar/Lunar;->year:I

    move-object/from16 v0, p0

    invoke-direct {v0, v15, v9}, Landroid/suda/lunar/Lunar;->monthDays(II)I

    move-result v4

    .line 148
    :goto_3
    sub-int/2addr v13, v4

    .line 149
    move-object/from16 v0, p0

    iget-boolean v15, v0, Landroid/suda/lunar/Lunar;->leap:Z

    if-eqz v15, :cond_3

    add-int/lit8 v15, v11, 0x1

    if-ne v9, v15, :cond_3

    .line 150
    const/4 v15, 0x0

    move-object/from16 v0, p0

    iput-boolean v15, v0, Landroid/suda/lunar/Lunar;->leap:Z

    .line 151
    :cond_3
    move-object/from16 v0, p0

    iget-boolean v15, v0, Landroid/suda/lunar/Lunar;->leap:Z

    if-nez v15, :cond_4

    .line 152
    add-int/lit8 v12, v12, 0x1

    .line 141
    :cond_4
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    .line 143
    :cond_5
    add-int/lit8 v9, v9, -0x1

    .line 144
    const/4 v15, 0x1

    move-object/from16 v0, p0

    iput-boolean v15, v0, Landroid/suda/lunar/Lunar;->leap:Z

    .line 145
    move-object/from16 v0, p0

    iget v15, v0, Landroid/suda/lunar/Lunar;->year:I

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Landroid/suda/lunar/Lunar;->leapDays(I)I

    move-result v4

    goto :goto_3

    .line 154
    :cond_6
    if-nez v13, :cond_7

    if-lez v11, :cond_7

    add-int/lit8 v15, v11, 0x1

    if-ne v9, v15, :cond_7

    .line 155
    move-object/from16 v0, p0

    iget-boolean v15, v0, Landroid/suda/lunar/Lunar;->leap:Z

    if-eqz v15, :cond_9

    .line 156
    const/4 v15, 0x0

    move-object/from16 v0, p0

    iput-boolean v15, v0, Landroid/suda/lunar/Lunar;->leap:Z

    .line 163
    :cond_7
    :goto_4
    if-gez v13, :cond_8

    .line 164
    add-int/2addr v13, v4

    .line 165
    add-int/lit8 v9, v9, -0x1

    .line 166
    add-int/lit8 v12, v12, -0x1

    .line 168
    :cond_8
    move-object/from16 v0, p0

    iput v9, v0, Landroid/suda/lunar/Lunar;->month:I

    .line 169
    add-int/lit8 v15, v13, 0x1

    move-object/from16 v0, p0

    iput v15, v0, Landroid/suda/lunar/Lunar;->day:I

    .line 107
    return-void

    .line 158
    :cond_9
    const/4 v15, 0x1

    move-object/from16 v0, p0

    iput-boolean v15, v0, Landroid/suda/lunar/Lunar;->leap:Z

    .line 159
    add-int/lit8 v9, v9, -0x1

    .line 160
    add-int/lit8 v12, v12, -0x1

    goto :goto_4
.end method

.method private cyclicalm(I)Ljava/lang/String;
    .locals 4
    .param p1, "num"    # I

    .prologue
    .line 97
    sget-object v0, Landroid/suda/lunar/Constant;->GAN_CN:[Ljava/lang/String;

    .line 98
    .local v0, "Gan":[Ljava/lang/String;
    sget-object v1, Landroid/suda/lunar/Constant;->ZHI_CN:[Ljava/lang/String;

    .line 99
    .local v1, "Zhi":[Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    rem-int/lit8 v3, p1, 0xa

    aget-object v3, v0, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    rem-int/lit8 v3, p1, 0xc

    aget-object v3, v1, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private leapDays(I)I
    .locals 4
    .param p1, "y"    # I

    .prologue
    const/4 v1, 0x0

    .line 71
    invoke-direct {p0, p1}, Landroid/suda/lunar/Lunar;->leapMonth(I)I

    move-result v0

    if-eqz v0, :cond_1

    .line 72
    sget-object v0, Landroid/suda/lunar/Lunar;->lunarInfo:[J

    add-int/lit16 v1, p1, -0x76c

    aget-wide v0, v0, v1

    const-wide/32 v2, 0x10000

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 73
    const/16 v0, 0x1e

    return v0

    .line 75
    :cond_0
    const/16 v0, 0x1d

    return v0

    .line 77
    :cond_1
    return v1
.end method

.method private leapMonth(I)I
    .locals 4
    .param p1, "y"    # I

    .prologue
    .line 81
    sget-object v0, Landroid/suda/lunar/Lunar;->lunarInfo:[J

    add-int/lit16 v1, p1, -0x76c

    aget-wide v0, v0, v1

    const-wide/16 v2, 0xf

    and-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method

.method private monthDays(II)I
    .locals 4
    .param p1, "y"    # I
    .param p2, "m"    # I

    .prologue
    .line 85
    sget-object v0, Landroid/suda/lunar/Lunar;->lunarInfo:[J

    add-int/lit16 v1, p1, -0x76c

    aget-wide v0, v0, v1

    const/high16 v2, 0x10000

    shr-int/2addr v2, p2

    int-to-long v2, v2

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 86
    const/16 v0, 0x1d

    return v0

    .line 88
    :cond_0
    const/16 v0, 0x1e

    return v0
.end method

.method private yearDays(I)I
    .locals 6
    .param p1, "y"    # I

    .prologue
    .line 62
    const/16 v1, 0x15c

    .line 63
    .local v1, "sum":I
    const v0, 0x8000

    .local v0, "i":I
    :goto_0
    const/16 v2, 0x8

    if-le v0, v2, :cond_1

    .line 64
    sget-object v2, Landroid/suda/lunar/Lunar;->lunarInfo:[J

    add-int/lit16 v3, p1, -0x76c

    aget-wide v2, v2, v3

    int-to-long v4, v0

    and-long/2addr v2, v4

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    .line 65
    add-int/lit8 v1, v1, 0x1

    .line 63
    :cond_0
    shr-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 67
    :cond_1
    invoke-direct {p0, p1}, Landroid/suda/lunar/Lunar;->leapDays(I)I

    move-result v2

    add-int/2addr v2, v1

    return v2
.end method


# virtual methods
.method public animalsYear()Ljava/lang/String;
    .locals 2

    .prologue
    .line 92
    invoke-static {}, Landroid/suda/lunar/Constant;->getAnimals()[Ljava/lang/String;

    move-result-object v0

    .line 93
    .local v0, "Animals":[Ljava/lang/String;
    iget v1, p0, Landroid/suda/lunar/Lunar;->year:I

    add-int/lit8 v1, v1, -0x4

    rem-int/lit8 v1, v1, 0xc

    aget-object v1, v0, v1

    return-object v1
.end method

.method public cyclical()Ljava/lang/String;
    .locals 2

    .prologue
    .line 103
    iget v1, p0, Landroid/suda/lunar/Lunar;->year:I

    add-int/lit16 v1, v1, -0x76c

    add-int/lit8 v0, v1, 0x24

    .line 104
    .local v0, "num":I
    invoke-direct {p0, v0}, Landroid/suda/lunar/Lunar;->cyclicalm(I)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getChinaDayString(I)Ljava/lang/String;
    .locals 4
    .param p1, "day"    # I

    .prologue
    const/16 v3, 0x1e

    .line 173
    sget-object v0, Landroid/suda/lunar/Constant;->CHINESE_TEN_CN:[Ljava/lang/String;

    .line 174
    .local v0, "chineseTen":[Ljava/lang/String;
    rem-int/lit8 v2, p1, 0xa

    if-nez v2, :cond_0

    const/16 v1, 0x9

    .line 175
    .local v1, "n":I
    :goto_0
    if-le p1, v3, :cond_1

    .line 176
    const-string/jumbo v2, ""

    return-object v2

    .line 174
    .end local v1    # "n":I
    :cond_0
    rem-int/lit8 v2, p1, 0xa

    add-int/lit8 v1, v2, -0x1

    .restart local v1    # "n":I
    goto :goto_0

    .line 177
    :cond_1
    const/16 v2, 0xa

    if-ne p1, v2, :cond_2

    .line 178
    const-string/jumbo v2, "\u521d\u5341"

    return-object v2

    .line 179
    :cond_2
    const/16 v2, 0x14

    if-ne p1, v2, :cond_3

    .line 180
    const-string/jumbo v2, "\u4e8c\u5341"

    return-object v2

    .line 181
    :cond_3
    if-ne p1, v3, :cond_4

    .line 182
    const-string/jumbo v2, "\u4e09\u5341"

    return-object v2

    .line 184
    :cond_4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    div-int/lit8 v3, p1, 0xa

    aget-object v3, v0, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/suda/lunar/Lunar;->chineseNumber:[Ljava/lang/String;

    aget-object v3, v3, v1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public isBigMonth(Ljava/lang/String;)Z
    .locals 2
    .param p1, "lunarFestivalStr"    # Ljava/lang/String;

    .prologue
    .line 197
    iget v0, p0, Landroid/suda/lunar/Lunar;->year:I

    iget v1, p0, Landroid/suda/lunar/Lunar;->month:I

    invoke-direct {p0, v0, v1}, Landroid/suda/lunar/Lunar;->monthDays(II)I

    move-result v0

    const/16 v1, 0x1e

    if-ne v0, v1, :cond_0

    .line 198
    const/4 v0, 0x1

    return v0

    .line 200
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .prologue
    .line 188
    const-string/jumbo v2, "\u5e74"

    .line 189
    .local v2, "year1":Ljava/lang/String;
    invoke-static {}, Landroid/suda/lunar/Constant;->getLeap()Ljava/lang/String;

    move-result-object v1

    .line 190
    .local v1, "run1":Ljava/lang/String;
    const-string/jumbo v0, "\u6708"

    .line 191
    .local v0, "month1":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/suda/lunar/Lunar;->cyclical()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Landroid/suda/lunar/Lunar;->animalsYear()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Landroid/suda/lunar/Lunar;->leap:Z

    if-eqz v4, :cond_0

    .end local v1    # "run1":Ljava/lang/String;
    :goto_0
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/suda/lunar/Lunar;->lunarMonthName:[Ljava/lang/String;

    iget v5, p0, Landroid/suda/lunar/Lunar;->month:I

    add-int/lit8 v5, v5, -0x1

    aget-object v4, v4, v5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 193
    iget v4, p0, Landroid/suda/lunar/Lunar;->day:I

    invoke-virtual {p0, v4}, Landroid/suda/lunar/Lunar;->getChinaDayString(I)Ljava/lang/String;

    move-result-object v4

    .line 191
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .restart local v1    # "run1":Ljava/lang/String;
    :cond_0
    const-string/jumbo v1, ""

    goto :goto_0
.end method
