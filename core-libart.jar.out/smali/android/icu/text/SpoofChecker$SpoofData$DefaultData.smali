.class final Landroid/icu/text/SpoofChecker$SpoofData$DefaultData;
.super Ljava/lang/Object;
.source "SpoofChecker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/text/SpoofChecker$SpoofData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "DefaultData"
.end annotation


# static fields
.field private static INSTANCE:Landroid/icu/text/SpoofChecker$SpoofData;


# direct methods
.method static synthetic -get0()Landroid/icu/text/SpoofChecker$SpoofData;
    .locals 1

    sget-object v0, Landroid/icu/text/SpoofChecker$SpoofData$DefaultData;->INSTANCE:Landroid/icu/text/SpoofChecker$SpoofData;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    const/4 v1, 0x0

    sput-object v1, Landroid/icu/text/SpoofChecker$SpoofData$DefaultData;->INSTANCE:Landroid/icu/text/SpoofChecker$SpoofData;

    :try_start_0
    new-instance v1, Landroid/icu/text/SpoofChecker$SpoofData;

    const-string/jumbo v2, "confusables.cfu"

    invoke-static {v2}, Landroid/icu/impl/ICUBinary;->getRequiredData(Ljava/lang/String;)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/icu/text/SpoofChecker$SpoofData;-><init>(Ljava/nio/ByteBuffer;)V

    sput-object v1, Landroid/icu/text/SpoofChecker$SpoofData$DefaultData;->INSTANCE:Landroid/icu/text/SpoofChecker$SpoofData;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
