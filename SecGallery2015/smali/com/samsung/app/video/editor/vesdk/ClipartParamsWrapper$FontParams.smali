.class public Lcom/samsung/app/video/editor/vesdk/ClipartParamsWrapper$FontParams;
.super Ljava/lang/Object;
.source "ClipartParamsWrapper.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/app/video/editor/vesdk/ClipartParamsWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FontParams"
.end annotation


# instance fields
.field public mAlignFlag:I

.field public mFontAssetFilePath:Ljava/lang/String;

.field public mFontColor:I

.field public mFontSize:I

.field public mFontTextStyle:I

.field public mIsPlatformFont:Z

.field public mPaintFlags:I

.field public mShadowColor:I

.field public mShadowR:I

.field public mShadowX:I

.field public mShadowY:I


# direct methods
.method public constructor <init>(Lcom/samsung/app/video/editor/vesdk/ClipartParamsWrapper$FontParams;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    iget-object v0, p1, Lcom/samsung/app/video/editor/vesdk/ClipartParamsWrapper$FontParams;->mFontAssetFilePath:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/app/video/editor/vesdk/ClipartParamsWrapper$FontParams;->mFontAssetFilePath:Ljava/lang/String;

    iget-boolean v0, p1, Lcom/samsung/app/video/editor/vesdk/ClipartParamsWrapper$FontParams;->mIsPlatformFont:Z

    iput-boolean v0, p0, Lcom/samsung/app/video/editor/vesdk/ClipartParamsWrapper$FontParams;->mIsPlatformFont:Z

    iget v0, p1, Lcom/samsung/app/video/editor/vesdk/ClipartParamsWrapper$FontParams;->mFontTextStyle:I

    iput v0, p0, Lcom/samsung/app/video/editor/vesdk/ClipartParamsWrapper$FontParams;->mFontTextStyle:I

    iget v0, p1, Lcom/samsung/app/video/editor/vesdk/ClipartParamsWrapper$FontParams;->mAlignFlag:I

    iput v0, p0, Lcom/samsung/app/video/editor/vesdk/ClipartParamsWrapper$FontParams;->mAlignFlag:I

    iget v0, p1, Lcom/samsung/app/video/editor/vesdk/ClipartParamsWrapper$FontParams;->mFontSize:I

    iput v0, p0, Lcom/samsung/app/video/editor/vesdk/ClipartParamsWrapper$FontParams;->mFontSize:I

    iget v0, p1, Lcom/samsung/app/video/editor/vesdk/ClipartParamsWrapper$FontParams;->mFontColor:I

    iput v0, p0, Lcom/samsung/app/video/editor/vesdk/ClipartParamsWrapper$FontParams;->mFontColor:I

    iget v0, p1, Lcom/samsung/app/video/editor/vesdk/ClipartParamsWrapper$FontParams;->mShadowColor:I

    iput v0, p0, Lcom/samsung/app/video/editor/vesdk/ClipartParamsWrapper$FontParams;->mShadowColor:I

    iget v0, p1, Lcom/samsung/app/video/editor/vesdk/ClipartParamsWrapper$FontParams;->mShadowX:I

    iput v0, p0, Lcom/samsung/app/video/editor/vesdk/ClipartParamsWrapper$FontParams;->mShadowX:I

    iget v0, p1, Lcom/samsung/app/video/editor/vesdk/ClipartParamsWrapper$FontParams;->mShadowY:I

    iput v0, p0, Lcom/samsung/app/video/editor/vesdk/ClipartParamsWrapper$FontParams;->mShadowY:I

    iget v0, p1, Lcom/samsung/app/video/editor/vesdk/ClipartParamsWrapper$FontParams;->mShadowR:I

    iput v0, p0, Lcom/samsung/app/video/editor/vesdk/ClipartParamsWrapper$FontParams;->mShadowR:I

    iget v0, p1, Lcom/samsung/app/video/editor/vesdk/ClipartParamsWrapper$FontParams;->mPaintFlags:I

    iput v0, p0, Lcom/samsung/app/video/editor/vesdk/ClipartParamsWrapper$FontParams;->mPaintFlags:I

    :cond_0
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ZIIIIIIIII)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/app/video/editor/vesdk/ClipartParamsWrapper$FontParams;->mFontAssetFilePath:Ljava/lang/String;

    iput-boolean p2, p0, Lcom/samsung/app/video/editor/vesdk/ClipartParamsWrapper$FontParams;->mIsPlatformFont:Z

    iput p3, p0, Lcom/samsung/app/video/editor/vesdk/ClipartParamsWrapper$FontParams;->mFontTextStyle:I

    iput p4, p0, Lcom/samsung/app/video/editor/vesdk/ClipartParamsWrapper$FontParams;->mAlignFlag:I

    iput p5, p0, Lcom/samsung/app/video/editor/vesdk/ClipartParamsWrapper$FontParams;->mFontSize:I

    iput p6, p0, Lcom/samsung/app/video/editor/vesdk/ClipartParamsWrapper$FontParams;->mFontColor:I

    iput p7, p0, Lcom/samsung/app/video/editor/vesdk/ClipartParamsWrapper$FontParams;->mShadowColor:I

    iput p8, p0, Lcom/samsung/app/video/editor/vesdk/ClipartParamsWrapper$FontParams;->mShadowX:I

    iput p9, p0, Lcom/samsung/app/video/editor/vesdk/ClipartParamsWrapper$FontParams;->mShadowY:I

    iput p10, p0, Lcom/samsung/app/video/editor/vesdk/ClipartParamsWrapper$FontParams;->mShadowR:I

    iput p11, p0, Lcom/samsung/app/video/editor/vesdk/ClipartParamsWrapper$FontParams;->mPaintFlags:I

    return-void
.end method
