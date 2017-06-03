.class Landroid/icu/text/Bidi$ImpTabPair;
.super Ljava/lang/Object;
.source "Bidi.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/text/Bidi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ImpTabPair"
.end annotation


# instance fields
.field impact:[[S

.field imptab:[[[B


# direct methods
.method constructor <init>([[B[[B[S[S)V
    .locals 4

    const/4 v3, 0x2

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-array v0, v3, [[[B

    aput-object p1, v0, v1

    aput-object p2, v0, v2

    iput-object v0, p0, Landroid/icu/text/Bidi$ImpTabPair;->imptab:[[[B

    new-array v0, v3, [[S

    aput-object p3, v0, v1

    aput-object p4, v0, v2

    iput-object v0, p0, Landroid/icu/text/Bidi$ImpTabPair;->impact:[[S

    return-void
.end method
