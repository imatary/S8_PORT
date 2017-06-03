.class Landroid/icu/text/SpoofChecker$SpoofData$SpoofStringLengthsElement;
.super Ljava/lang/Object;
.source "SpoofChecker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/text/SpoofChecker$SpoofData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "SpoofStringLengthsElement"
.end annotation


# instance fields
.field fLastString:I

.field fStrLength:I


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v1, 0x0

    instance-of v2, p1, Landroid/icu/text/SpoofChecker$SpoofData$SpoofStringLengthsElement;

    if-nez v2, :cond_0

    return v1

    :cond_0
    move-object v0, p1

    nop

    nop

    iget v2, p0, Landroid/icu/text/SpoofChecker$SpoofData$SpoofStringLengthsElement;->fLastString:I

    iget v3, v0, Landroid/icu/text/SpoofChecker$SpoofData$SpoofStringLengthsElement;->fLastString:I

    if-ne v2, v3, :cond_1

    iget v2, p0, Landroid/icu/text/SpoofChecker$SpoofData$SpoofStringLengthsElement;->fStrLength:I

    iget v3, v0, Landroid/icu/text/SpoofChecker$SpoofData$SpoofStringLengthsElement;->fStrLength:I

    if-ne v2, v3, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method
