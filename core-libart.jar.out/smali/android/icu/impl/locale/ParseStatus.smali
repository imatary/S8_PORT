.class public Landroid/icu/impl/locale/ParseStatus;
.super Ljava/lang/Object;
.source "ParseStatus.java"


# instance fields
.field _errorIndex:I

.field _errorMsg:Ljava/lang/String;

.field _parseLength:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Landroid/icu/impl/locale/ParseStatus;->_parseLength:I

    const/4 v0, -0x1

    iput v0, p0, Landroid/icu/impl/locale/ParseStatus;->_errorIndex:I

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/icu/impl/locale/ParseStatus;->_errorMsg:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getErrorIndex()I
    .locals 1

    iget v0, p0, Landroid/icu/impl/locale/ParseStatus;->_errorIndex:I

    return v0
.end method

.method public getErrorMessage()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/icu/impl/locale/ParseStatus;->_errorMsg:Ljava/lang/String;

    return-object v0
.end method

.method public getParseLength()I
    .locals 1

    iget v0, p0, Landroid/icu/impl/locale/ParseStatus;->_parseLength:I

    return v0
.end method

.method public isError()Z
    .locals 2

    const/4 v0, 0x0

    iget v1, p0, Landroid/icu/impl/locale/ParseStatus;->_errorIndex:I

    if-ltz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public reset()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Landroid/icu/impl/locale/ParseStatus;->_parseLength:I

    const/4 v0, -0x1

    iput v0, p0, Landroid/icu/impl/locale/ParseStatus;->_errorIndex:I

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/icu/impl/locale/ParseStatus;->_errorMsg:Ljava/lang/String;

    return-void
.end method
