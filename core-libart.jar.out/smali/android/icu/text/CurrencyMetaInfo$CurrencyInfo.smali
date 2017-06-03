.class public final Landroid/icu/text/CurrencyMetaInfo$CurrencyInfo;
.super Ljava/lang/Object;
.source "CurrencyMetaInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/text/CurrencyMetaInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CurrencyInfo"
.end annotation


# instance fields
.field public final code:Ljava/lang/String;

.field public final from:J

.field public final priority:I

.field public final region:Ljava/lang/String;

.field private final tender:Z

.field public final to:J


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;JJI)V
    .locals 11
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v9, 0x1

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-wide v4, p3

    move-wide/from16 v6, p5

    move/from16 v8, p7

    invoke-direct/range {v1 .. v9}, Landroid/icu/text/CurrencyMetaInfo$CurrencyInfo;-><init>(Ljava/lang/String;Ljava/lang/String;JJIZ)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;JJIZ)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/icu/text/CurrencyMetaInfo$CurrencyInfo;->region:Ljava/lang/String;

    iput-object p2, p0, Landroid/icu/text/CurrencyMetaInfo$CurrencyInfo;->code:Ljava/lang/String;

    iput-wide p3, p0, Landroid/icu/text/CurrencyMetaInfo$CurrencyInfo;->from:J

    iput-wide p5, p0, Landroid/icu/text/CurrencyMetaInfo$CurrencyInfo;->to:J

    iput p7, p0, Landroid/icu/text/CurrencyMetaInfo$CurrencyInfo;->priority:I

    iput-boolean p8, p0, Landroid/icu/text/CurrencyMetaInfo$CurrencyInfo;->tender:Z

    return-void
.end method


# virtual methods
.method public isTender()Z
    .locals 1

    iget-boolean v0, p0, Landroid/icu/text/CurrencyMetaInfo$CurrencyInfo;->tender:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Landroid/icu/text/CurrencyMetaInfo;->-wrap0(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
