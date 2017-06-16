.class public Lcom/quramsoft/images/QrBitmapFactory$Options;
.super Ljava/lang/Object;
.source "QrBitmapFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/quramsoft/images/QrBitmapFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Options"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/quramsoft/images/QrBitmapFactory$Options$Config;,
        Lcom/quramsoft/images/QrBitmapFactory$Options$DecodeFromOption;,
        Lcom/quramsoft/images/QrBitmapFactory$Options$InputType;
    }
.end annotation


# instance fields
.field public FileBlackLevel:[[[D

.field public FileBlackLevelRepeatCols:I

.field public FileBlackLevelRepeatRows:I

.field public FileWhiteLevel:[D

.field public SamplesPerPixel:I

.field public UseInfo:I

.field public UserBlackLevel:[[[D

.field public UserBlackLevelRepeatCols:I

.field public UserBlackLevelRepeatRows:I

.field public UserWhiteLevel:[D

.field public bRegionDecoder:Z

.field public count_nr:I

.field public handle:J

.field public height:I

.field public inCancelingRequested:Z

.field public inDecodeFromOption:I

.field public inDither:Z

.field public inInputType:I

.field public inJustDecodeBounds:Z

.field public inOptimizeCoding:I

.field public inPreferredConfig:I

.field public inPremultiplied:Z

.field public inQualityOverSpeed:I

.field public inSampleSize:I

.field public inScaled:Z

.field public mCropHeight:I

.field public mCropOriginX:I

.field public mCropOriginY:I

.field public mCropWidth:I

.field private mDecodeEndInfo:J

.field private mDecodeHandle:J

.field private mDecodeReadInfo:J

.field private mDecodeStruct:J

.field private mExifHandle:J

.field private mHeight:I

.field private mWidth:I

.field public outHeight:I

.field public outWidth:I

.field public rd_b:I

.field public rd_l:I

.field public rd_r:I

.field public rd_t:I

.field public width:I


# direct methods
.method public constructor <init>()V
    .locals 7

    const/4 v1, 0x1

    const/16 v6, 0x8

    const/4 v3, 0x4

    const-wide/16 v4, 0x0

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x7

    iput v0, p0, Lcom/quramsoft/images/QrBitmapFactory$Options;->inPreferredConfig:I

    iput-boolean v2, p0, Lcom/quramsoft/images/QrBitmapFactory$Options;->inJustDecodeBounds:Z

    iput v2, p0, Lcom/quramsoft/images/QrBitmapFactory$Options;->outWidth:I

    iput v2, p0, Lcom/quramsoft/images/QrBitmapFactory$Options;->outHeight:I

    iput-boolean v2, p0, Lcom/quramsoft/images/QrBitmapFactory$Options;->inScaled:Z

    iput-boolean v2, p0, Lcom/quramsoft/images/QrBitmapFactory$Options;->inPremultiplied:Z

    iput v1, p0, Lcom/quramsoft/images/QrBitmapFactory$Options;->inSampleSize:I

    iput-boolean v2, p0, Lcom/quramsoft/images/QrBitmapFactory$Options;->inDither:Z

    iput v2, p0, Lcom/quramsoft/images/QrBitmapFactory$Options;->inQualityOverSpeed:I

    iput v2, p0, Lcom/quramsoft/images/QrBitmapFactory$Options;->inInputType:I

    iput v2, p0, Lcom/quramsoft/images/QrBitmapFactory$Options;->inDecodeFromOption:I

    iput v2, p0, Lcom/quramsoft/images/QrBitmapFactory$Options;->inOptimizeCoding:I

    iput-wide v4, p0, Lcom/quramsoft/images/QrBitmapFactory$Options;->mDecodeHandle:J

    iput v2, p0, Lcom/quramsoft/images/QrBitmapFactory$Options;->mWidth:I

    iput v2, p0, Lcom/quramsoft/images/QrBitmapFactory$Options;->mHeight:I

    iput-wide v4, p0, Lcom/quramsoft/images/QrBitmapFactory$Options;->mExifHandle:J

    iput-boolean v2, p0, Lcom/quramsoft/images/QrBitmapFactory$Options;->inCancelingRequested:Z

    iput-wide v4, p0, Lcom/quramsoft/images/QrBitmapFactory$Options;->mDecodeStruct:J

    iput-wide v4, p0, Lcom/quramsoft/images/QrBitmapFactory$Options;->mDecodeReadInfo:J

    iput-wide v4, p0, Lcom/quramsoft/images/QrBitmapFactory$Options;->mDecodeEndInfo:J

    iput-boolean v2, p0, Lcom/quramsoft/images/QrBitmapFactory$Options;->inDither:Z

    iput-boolean v1, p0, Lcom/quramsoft/images/QrBitmapFactory$Options;->inScaled:Z

    iput-boolean v1, p0, Lcom/quramsoft/images/QrBitmapFactory$Options;->inPremultiplied:Z

    iput v2, p0, Lcom/quramsoft/images/QrBitmapFactory$Options;->UseInfo:I

    iput v2, p0, Lcom/quramsoft/images/QrBitmapFactory$Options;->SamplesPerPixel:I

    iput v2, p0, Lcom/quramsoft/images/QrBitmapFactory$Options;->UserBlackLevelRepeatRows:I

    iput v2, p0, Lcom/quramsoft/images/QrBitmapFactory$Options;->UserBlackLevelRepeatCols:I

    filled-new-array {v6, v6, v3}, [I

    move-result-object v0

    sget-object v1, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[[D

    iput-object v0, p0, Lcom/quramsoft/images/QrBitmapFactory$Options;->UserBlackLevel:[[[D

    new-array v0, v3, [D

    iput-object v0, p0, Lcom/quramsoft/images/QrBitmapFactory$Options;->UserWhiteLevel:[D

    iput v2, p0, Lcom/quramsoft/images/QrBitmapFactory$Options;->FileBlackLevelRepeatRows:I

    iput v2, p0, Lcom/quramsoft/images/QrBitmapFactory$Options;->FileBlackLevelRepeatCols:I

    filled-new-array {v6, v6, v3}, [I

    move-result-object v0

    sget-object v1, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[[D

    iput-object v0, p0, Lcom/quramsoft/images/QrBitmapFactory$Options;->FileBlackLevel:[[[D

    new-array v0, v3, [D

    iput-object v0, p0, Lcom/quramsoft/images/QrBitmapFactory$Options;->FileWhiteLevel:[D

    iput v2, p0, Lcom/quramsoft/images/QrBitmapFactory$Options;->rd_t:I

    iput v2, p0, Lcom/quramsoft/images/QrBitmapFactory$Options;->rd_b:I

    iput v2, p0, Lcom/quramsoft/images/QrBitmapFactory$Options;->rd_l:I

    iput v2, p0, Lcom/quramsoft/images/QrBitmapFactory$Options;->rd_r:I

    iput v2, p0, Lcom/quramsoft/images/QrBitmapFactory$Options;->count_nr:I

    iput-wide v4, p0, Lcom/quramsoft/images/QrBitmapFactory$Options;->handle:J

    iput-boolean v2, p0, Lcom/quramsoft/images/QrBitmapFactory$Options;->bRegionDecoder:Z

    iput v2, p0, Lcom/quramsoft/images/QrBitmapFactory$Options;->mCropOriginX:I

    iput v2, p0, Lcom/quramsoft/images/QrBitmapFactory$Options;->mCropOriginY:I

    iput v2, p0, Lcom/quramsoft/images/QrBitmapFactory$Options;->mCropWidth:I

    iput v2, p0, Lcom/quramsoft/images/QrBitmapFactory$Options;->mCropHeight:I

    return-void
.end method

.method public constructor <init>(I)V
    .locals 7

    const/4 v1, 0x1

    const/16 v6, 0x8

    const/4 v3, 0x4

    const-wide/16 v4, 0x0

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x7

    iput v0, p0, Lcom/quramsoft/images/QrBitmapFactory$Options;->inPreferredConfig:I

    iput-boolean v2, p0, Lcom/quramsoft/images/QrBitmapFactory$Options;->inJustDecodeBounds:Z

    iput v2, p0, Lcom/quramsoft/images/QrBitmapFactory$Options;->outWidth:I

    iput v2, p0, Lcom/quramsoft/images/QrBitmapFactory$Options;->outHeight:I

    iput-boolean v2, p0, Lcom/quramsoft/images/QrBitmapFactory$Options;->inScaled:Z

    iput-boolean v2, p0, Lcom/quramsoft/images/QrBitmapFactory$Options;->inPremultiplied:Z

    iput v1, p0, Lcom/quramsoft/images/QrBitmapFactory$Options;->inSampleSize:I

    iput-boolean v2, p0, Lcom/quramsoft/images/QrBitmapFactory$Options;->inDither:Z

    iput v2, p0, Lcom/quramsoft/images/QrBitmapFactory$Options;->inQualityOverSpeed:I

    iput v2, p0, Lcom/quramsoft/images/QrBitmapFactory$Options;->inInputType:I

    iput v2, p0, Lcom/quramsoft/images/QrBitmapFactory$Options;->inDecodeFromOption:I

    iput v2, p0, Lcom/quramsoft/images/QrBitmapFactory$Options;->inOptimizeCoding:I

    iput-wide v4, p0, Lcom/quramsoft/images/QrBitmapFactory$Options;->mDecodeHandle:J

    iput v2, p0, Lcom/quramsoft/images/QrBitmapFactory$Options;->mWidth:I

    iput v2, p0, Lcom/quramsoft/images/QrBitmapFactory$Options;->mHeight:I

    iput-wide v4, p0, Lcom/quramsoft/images/QrBitmapFactory$Options;->mExifHandle:J

    iput-boolean v2, p0, Lcom/quramsoft/images/QrBitmapFactory$Options;->inCancelingRequested:Z

    iput-wide v4, p0, Lcom/quramsoft/images/QrBitmapFactory$Options;->mDecodeStruct:J

    iput-wide v4, p0, Lcom/quramsoft/images/QrBitmapFactory$Options;->mDecodeReadInfo:J

    iput-wide v4, p0, Lcom/quramsoft/images/QrBitmapFactory$Options;->mDecodeEndInfo:J

    iput-boolean v2, p0, Lcom/quramsoft/images/QrBitmapFactory$Options;->inDither:Z

    iput-boolean v1, p0, Lcom/quramsoft/images/QrBitmapFactory$Options;->inScaled:Z

    iput-boolean v1, p0, Lcom/quramsoft/images/QrBitmapFactory$Options;->inPremultiplied:Z

    iput p1, p0, Lcom/quramsoft/images/QrBitmapFactory$Options;->UseInfo:I

    iput v2, p0, Lcom/quramsoft/images/QrBitmapFactory$Options;->SamplesPerPixel:I

    iput v2, p0, Lcom/quramsoft/images/QrBitmapFactory$Options;->UserBlackLevelRepeatRows:I

    iput v2, p0, Lcom/quramsoft/images/QrBitmapFactory$Options;->UserBlackLevelRepeatCols:I

    filled-new-array {v6, v6, v3}, [I

    move-result-object v0

    sget-object v1, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[[D

    iput-object v0, p0, Lcom/quramsoft/images/QrBitmapFactory$Options;->UserBlackLevel:[[[D

    new-array v0, v3, [D

    iput-object v0, p0, Lcom/quramsoft/images/QrBitmapFactory$Options;->UserWhiteLevel:[D

    iput v2, p0, Lcom/quramsoft/images/QrBitmapFactory$Options;->FileBlackLevelRepeatRows:I

    iput v2, p0, Lcom/quramsoft/images/QrBitmapFactory$Options;->FileBlackLevelRepeatCols:I

    filled-new-array {v6, v6, v3}, [I

    move-result-object v0

    sget-object v1, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[[D

    iput-object v0, p0, Lcom/quramsoft/images/QrBitmapFactory$Options;->FileBlackLevel:[[[D

    new-array v0, v3, [D

    iput-object v0, p0, Lcom/quramsoft/images/QrBitmapFactory$Options;->FileWhiteLevel:[D

    iput v2, p0, Lcom/quramsoft/images/QrBitmapFactory$Options;->rd_t:I

    iput v2, p0, Lcom/quramsoft/images/QrBitmapFactory$Options;->rd_b:I

    iput v2, p0, Lcom/quramsoft/images/QrBitmapFactory$Options;->rd_l:I

    iput v2, p0, Lcom/quramsoft/images/QrBitmapFactory$Options;->rd_r:I

    iput v2, p0, Lcom/quramsoft/images/QrBitmapFactory$Options;->count_nr:I

    iput-wide v4, p0, Lcom/quramsoft/images/QrBitmapFactory$Options;->handle:J

    iput-boolean v2, p0, Lcom/quramsoft/images/QrBitmapFactory$Options;->bRegionDecoder:Z

    iput v2, p0, Lcom/quramsoft/images/QrBitmapFactory$Options;->mCropOriginX:I

    iput v2, p0, Lcom/quramsoft/images/QrBitmapFactory$Options;->mCropOriginY:I

    iput v2, p0, Lcom/quramsoft/images/QrBitmapFactory$Options;->mCropWidth:I

    iput v2, p0, Lcom/quramsoft/images/QrBitmapFactory$Options;->mCropHeight:I

    return-void
.end method


# virtual methods
.method public copyFile2User()V
    .locals 6

    iget v3, p0, Lcom/quramsoft/images/QrBitmapFactory$Options;->FileBlackLevelRepeatRows:I

    iput v3, p0, Lcom/quramsoft/images/QrBitmapFactory$Options;->UserBlackLevelRepeatRows:I

    iget v3, p0, Lcom/quramsoft/images/QrBitmapFactory$Options;->FileBlackLevelRepeatCols:I

    iput v3, p0, Lcom/quramsoft/images/QrBitmapFactory$Options;->UserBlackLevelRepeatCols:I

    const/4 v0, 0x0

    :goto_0
    iget v3, p0, Lcom/quramsoft/images/QrBitmapFactory$Options;->UserBlackLevelRepeatRows:I

    if-lt v0, v3, :cond_0

    const/4 v2, 0x0

    :goto_1
    iget v3, p0, Lcom/quramsoft/images/QrBitmapFactory$Options;->SamplesPerPixel:I

    if-lt v2, v3, :cond_3

    return-void

    :cond_0
    const/4 v1, 0x0

    :goto_2
    iget v3, p0, Lcom/quramsoft/images/QrBitmapFactory$Options;->FileBlackLevelRepeatCols:I

    if-lt v1, v3, :cond_1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_3
    iget v3, p0, Lcom/quramsoft/images/QrBitmapFactory$Options;->SamplesPerPixel:I

    if-lt v2, v3, :cond_2

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_2
    iget-object v3, p0, Lcom/quramsoft/images/QrBitmapFactory$Options;->UserBlackLevel:[[[D

    aget-object v3, v3, v0

    aget-object v3, v3, v1

    iget-object v4, p0, Lcom/quramsoft/images/QrBitmapFactory$Options;->FileBlackLevel:[[[D

    aget-object v4, v4, v0

    aget-object v4, v4, v1

    aget-wide v4, v4, v2

    aput-wide v4, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_3
    iget-object v3, p0, Lcom/quramsoft/images/QrBitmapFactory$Options;->UserWhiteLevel:[D

    iget-object v4, p0, Lcom/quramsoft/images/QrBitmapFactory$Options;->FileWhiteLevel:[D

    aget-wide v4, v4, v2

    aput-wide v4, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method protected getEndInfo()J
    .locals 2

    iget-wide v0, p0, Lcom/quramsoft/images/QrBitmapFactory$Options;->mDecodeEndInfo:J

    return-wide v0
.end method

.method protected getExif()J
    .locals 2

    iget-wide v0, p0, Lcom/quramsoft/images/QrBitmapFactory$Options;->mExifHandle:J

    return-wide v0
.end method

.method protected getHandle()J
    .locals 2

    iget-wide v0, p0, Lcom/quramsoft/images/QrBitmapFactory$Options;->mDecodeHandle:J

    return-wide v0
.end method

.method public getHeight()I
    .locals 1

    iget v0, p0, Lcom/quramsoft/images/QrBitmapFactory$Options;->mHeight:I

    return v0
.end method

.method protected getReadInfo()J
    .locals 2

    iget-wide v0, p0, Lcom/quramsoft/images/QrBitmapFactory$Options;->mDecodeReadInfo:J

    return-wide v0
.end method

.method protected getStruct()J
    .locals 2

    iget-wide v0, p0, Lcom/quramsoft/images/QrBitmapFactory$Options;->mDecodeStruct:J

    return-wide v0
.end method

.method public getWidth()I
    .locals 1

    iget v0, p0, Lcom/quramsoft/images/QrBitmapFactory$Options;->mWidth:I

    return v0
.end method

.method protected setEndInfo(I)V
    .locals 2

    int-to-long v0, p1

    iput-wide v0, p0, Lcom/quramsoft/images/QrBitmapFactory$Options;->mDecodeEndInfo:J

    return-void
.end method

.method protected setExif(J)V
    .locals 1

    iput-wide p1, p0, Lcom/quramsoft/images/QrBitmapFactory$Options;->mExifHandle:J

    return-void
.end method

.method protected setHandle(J)V
    .locals 1

    iput-wide p1, p0, Lcom/quramsoft/images/QrBitmapFactory$Options;->mDecodeHandle:J

    return-void
.end method

.method public setHeight(I)V
    .locals 0

    iput p1, p0, Lcom/quramsoft/images/QrBitmapFactory$Options;->mHeight:I

    return-void
.end method

.method protected setReadInfo(I)V
    .locals 2

    int-to-long v0, p1

    iput-wide v0, p0, Lcom/quramsoft/images/QrBitmapFactory$Options;->mDecodeReadInfo:J

    return-void
.end method

.method protected setStruct(I)V
    .locals 2

    int-to-long v0, p1

    iput-wide v0, p0, Lcom/quramsoft/images/QrBitmapFactory$Options;->mDecodeStruct:J

    return-void
.end method

.method public setWidth(I)V
    .locals 0

    iput p1, p0, Lcom/quramsoft/images/QrBitmapFactory$Options;->mWidth:I

    return-void
.end method
