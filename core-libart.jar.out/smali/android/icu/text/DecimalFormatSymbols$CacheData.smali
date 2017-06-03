.class Landroid/icu/text/DecimalFormatSymbols$CacheData;
.super Ljava/lang/Object;
.source "DecimalFormatSymbols.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/text/DecimalFormatSymbols;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CacheData"
.end annotation


# instance fields
.field public final digits:[C

.field public final symbolsArray:[Ljava/lang/String;


# direct methods
.method public constructor <init>([C[Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/icu/text/DecimalFormatSymbols$CacheData;->digits:[C

    iput-object p2, p0, Landroid/icu/text/DecimalFormatSymbols$CacheData;->symbolsArray:[Ljava/lang/String;

    return-void
.end method
