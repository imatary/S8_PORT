.class public Lcom/sec/android/mimage/photoretouching/lpe/util/EditTextInfo;
.super Ljava/lang/Object;
.source "EditTextInfo.java"


# instance fields
.field private isVertical:Z

.field private mCurrentString:Ljava/lang/String;

.field private mDefaultString:Ljava/lang/String;

.field private mEditable:Z

.field private mFontColor:I

.field private mFontSizeSecondLine:I

.field private mFontSizeSingleLine:I

.field private mHeight:I

.field private mLeft:I

.field private mTop:I

.field private mTypeFace:Landroid/graphics/Typeface;

.field private mWidth:I

.field private noOfLines:I


# direct methods
.method public constructor <init>(IIIIZZLjava/lang/String;IIILandroid/graphics/Typeface;I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/EditTextInfo;->mEditable:Z

    iput-boolean p6, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/EditTextInfo;->isVertical:Z

    iput-object p7, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/EditTextInfo;->mDefaultString:Ljava/lang/String;

    iput-object p7, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/EditTextInfo;->mCurrentString:Ljava/lang/String;

    iput-boolean p5, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/EditTextInfo;->mEditable:Z

    iput p8, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/EditTextInfo;->mFontColor:I

    iput p9, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/EditTextInfo;->mFontSizeSingleLine:I

    iput p10, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/EditTextInfo;->mFontSizeSecondLine:I

    iput p4, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/EditTextInfo;->mHeight:I

    iput p1, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/EditTextInfo;->mLeft:I

    iput p2, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/EditTextInfo;->mTop:I

    iput-object p11, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/EditTextInfo;->mTypeFace:Landroid/graphics/Typeface;

    iput p3, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/EditTextInfo;->mWidth:I

    iput p12, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/EditTextInfo;->noOfLines:I

    return-void
.end method


# virtual methods
.method public getCurrentString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/EditTextInfo;->mCurrentString:Ljava/lang/String;

    return-object v0
.end method

.method public getDefaultString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/EditTextInfo;->mDefaultString:Ljava/lang/String;

    return-object v0
.end method

.method public getFontColor()I
    .locals 1

    iget v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/EditTextInfo;->mFontColor:I

    return v0
.end method

.method public getHeight()I
    .locals 1

    iget v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/EditTextInfo;->mHeight:I

    return v0
.end method

.method public getLeft()I
    .locals 1

    iget v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/EditTextInfo;->mLeft:I

    return v0
.end method

.method public getNoOfLines()I
    .locals 1

    iget v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/EditTextInfo;->noOfLines:I

    return v0
.end method

.method public getTop()I
    .locals 1

    iget v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/EditTextInfo;->mTop:I

    return v0
.end method

.method public getTypeFace()Landroid/graphics/Typeface;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/EditTextInfo;->mTypeFace:Landroid/graphics/Typeface;

    return-object v0
.end method

.method public getWidth()I
    .locals 1

    iget v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/EditTextInfo;->mWidth:I

    return v0
.end method

.method public getfontSizeSecondLine()I
    .locals 1

    iget v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/EditTextInfo;->mFontSizeSecondLine:I

    return v0
.end method

.method public getfontSizeSingleLine()I
    .locals 1

    iget v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/EditTextInfo;->mFontSizeSingleLine:I

    return v0
.end method

.method public isEditable()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/EditTextInfo;->mEditable:Z

    return v0
.end method

.method public isVertical()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/EditTextInfo;->isVertical:Z

    return v0
.end method

.method public setCurrentString(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/EditTextInfo;->mCurrentString:Ljava/lang/String;

    return-void
.end method
