.class final Landroid/icu/text/Normalizer$Unicode32;
.super Ljava/lang/Object;
.source "Normalizer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/text/Normalizer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Unicode32"
.end annotation


# static fields
.field private static final INSTANCE:Landroid/icu/text/UnicodeSet;


# direct methods
.method static synthetic -get0()Landroid/icu/text/UnicodeSet;
    .locals 1

    sget-object v0, Landroid/icu/text/Normalizer$Unicode32;->INSTANCE:Landroid/icu/text/UnicodeSet;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroid/icu/text/UnicodeSet;

    const-string/jumbo v1, "[:age=3.2:]"

    invoke-direct {v0, v1}, Landroid/icu/text/UnicodeSet;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/icu/text/UnicodeSet;->freeze()Landroid/icu/text/UnicodeSet;

    move-result-object v0

    sput-object v0, Landroid/icu/text/Normalizer$Unicode32;->INSTANCE:Landroid/icu/text/UnicodeSet;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
