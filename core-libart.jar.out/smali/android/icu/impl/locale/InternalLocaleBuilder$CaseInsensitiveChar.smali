.class Landroid/icu/impl/locale/InternalLocaleBuilder$CaseInsensitiveChar;
.super Ljava/lang/Object;
.source "InternalLocaleBuilder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/impl/locale/InternalLocaleBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "CaseInsensitiveChar"
.end annotation


# instance fields
.field private _c:C


# direct methods
.method constructor <init>(C)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-char p1, p0, Landroid/icu/impl/locale/InternalLocaleBuilder$CaseInsensitiveChar;->_c:C

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v2, p1, Landroid/icu/impl/locale/InternalLocaleBuilder$CaseInsensitiveChar;

    if-nez v2, :cond_1

    return v1

    :cond_1
    iget-char v2, p0, Landroid/icu/impl/locale/InternalLocaleBuilder$CaseInsensitiveChar;->_c:C

    nop

    nop

    invoke-virtual {p1}, Landroid/icu/impl/locale/InternalLocaleBuilder$CaseInsensitiveChar;->value()C

    move-result v3

    invoke-static {v3}, Landroid/icu/impl/locale/AsciiUtil;->toLower(C)C

    move-result v3

    if-ne v2, v3, :cond_2

    :goto_0
    return v0

    :cond_2
    move v0, v1

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    iget-char v0, p0, Landroid/icu/impl/locale/InternalLocaleBuilder$CaseInsensitiveChar;->_c:C

    invoke-static {v0}, Landroid/icu/impl/locale/AsciiUtil;->toLower(C)C

    move-result v0

    return v0
.end method

.method public value()C
    .locals 1

    iget-char v0, p0, Landroid/icu/impl/locale/InternalLocaleBuilder$CaseInsensitiveChar;->_c:C

    return v0
.end method
