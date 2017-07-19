.class public Lcom/quramsoft/qrb/QuramBitmapFactory$Options;
.super Ljava/lang/Object;
.source "QuramBitmapFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/quramsoft/qrb/QuramBitmapFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Options"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/quramsoft/qrb/QuramBitmapFactory$Options$Config;,
        Lcom/quramsoft/qrb/QuramBitmapFactory$Options$DecodeFromOption;,
        Lcom/quramsoft/qrb/QuramBitmapFactory$Options$InputType;
    }
.end annotation


# instance fields
.field public inCancelingRequested:Z

.field public inDecodeFromOption:I

.field public inDither:Z

.field public inInputType:I

.field public inPreferredConfig:I

.field public inQualityOverSpeed:I

.field public inSampleSize:I

.field private mDecodeHandle:J

.field private mExifHandle:J

.field private mHeight:I

.field private mMidpoint:[B

.field private mMidpointOffset:I

.field private mWidth:I


# direct methods
.method public constructor <init>()V
    .locals 4

    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x7

    iput v0, p0, Lcom/quramsoft/qrb/QuramBitmapFactory$Options;->inPreferredConfig:I

    const/4 v0, 0x1

    iput v0, p0, Lcom/quramsoft/qrb/QuramBitmapFactory$Options;->inSampleSize:I

    iput-boolean v1, p0, Lcom/quramsoft/qrb/QuramBitmapFactory$Options;->inDither:Z

    iput v1, p0, Lcom/quramsoft/qrb/QuramBitmapFactory$Options;->inQualityOverSpeed:I

    iput v1, p0, Lcom/quramsoft/qrb/QuramBitmapFactory$Options;->inInputType:I

    iput v1, p0, Lcom/quramsoft/qrb/QuramBitmapFactory$Options;->inDecodeFromOption:I

    iput-wide v2, p0, Lcom/quramsoft/qrb/QuramBitmapFactory$Options;->mDecodeHandle:J

    iput v1, p0, Lcom/quramsoft/qrb/QuramBitmapFactory$Options;->mWidth:I

    iput v1, p0, Lcom/quramsoft/qrb/QuramBitmapFactory$Options;->mHeight:I

    iput-wide v2, p0, Lcom/quramsoft/qrb/QuramBitmapFactory$Options;->mExifHandle:J

    iput-boolean v1, p0, Lcom/quramsoft/qrb/QuramBitmapFactory$Options;->inCancelingRequested:Z

    return-void
.end method

.method static synthetic access$0(Lcom/quramsoft/qrb/QuramBitmapFactory$Options;)I
    .locals 1

    iget v0, p0, Lcom/quramsoft/qrb/QuramBitmapFactory$Options;->mWidth:I

    return v0
.end method

.method static synthetic access$1(Lcom/quramsoft/qrb/QuramBitmapFactory$Options;)I
    .locals 1

    iget v0, p0, Lcom/quramsoft/qrb/QuramBitmapFactory$Options;->mHeight:I

    return v0
.end method

.method static synthetic access$2(Lcom/quramsoft/qrb/QuramBitmapFactory$Options;)[B
    .locals 1

    iget-object v0, p0, Lcom/quramsoft/qrb/QuramBitmapFactory$Options;->mMidpoint:[B

    return-object v0
.end method

.method static synthetic access$3(Lcom/quramsoft/qrb/QuramBitmapFactory$Options;)I
    .locals 1

    iget v0, p0, Lcom/quramsoft/qrb/QuramBitmapFactory$Options;->mMidpointOffset:I

    return v0
.end method

.method static synthetic access$4(Lcom/quramsoft/qrb/QuramBitmapFactory$Options;I)V
    .locals 0

    iput p1, p0, Lcom/quramsoft/qrb/QuramBitmapFactory$Options;->mWidth:I

    return-void
.end method

.method static synthetic access$5(Lcom/quramsoft/qrb/QuramBitmapFactory$Options;I)V
    .locals 0

    iput p1, p0, Lcom/quramsoft/qrb/QuramBitmapFactory$Options;->mHeight:I

    return-void
.end method


# virtual methods
.method protected getExif()J
    .locals 2

    iget-wide v0, p0, Lcom/quramsoft/qrb/QuramBitmapFactory$Options;->mExifHandle:J

    return-wide v0
.end method

.method protected getHandle()J
    .locals 2

    iget-wide v0, p0, Lcom/quramsoft/qrb/QuramBitmapFactory$Options;->mDecodeHandle:J

    return-wide v0
.end method

.method public getHeight()I
    .locals 1

    iget v0, p0, Lcom/quramsoft/qrb/QuramBitmapFactory$Options;->mHeight:I

    return v0
.end method

.method public getMidpoint()[B
    .locals 1

    iget-object v0, p0, Lcom/quramsoft/qrb/QuramBitmapFactory$Options;->mMidpoint:[B

    return-object v0
.end method

.method public getWidth()I
    .locals 1

    iget v0, p0, Lcom/quramsoft/qrb/QuramBitmapFactory$Options;->mWidth:I

    return v0
.end method

.method protected setExif(J)V
    .locals 1

    iput-wide p1, p0, Lcom/quramsoft/qrb/QuramBitmapFactory$Options;->mExifHandle:J

    return-void
.end method

.method protected setHandle(J)V
    .locals 1

    iput-wide p1, p0, Lcom/quramsoft/qrb/QuramBitmapFactory$Options;->mDecodeHandle:J

    return-void
.end method

.method public setHeight(I)V
    .locals 0

    iput p1, p0, Lcom/quramsoft/qrb/QuramBitmapFactory$Options;->mHeight:I

    return-void
.end method

.method public setMidpoint([BI)V
    .locals 0

    iput-object p1, p0, Lcom/quramsoft/qrb/QuramBitmapFactory$Options;->mMidpoint:[B

    iput p2, p0, Lcom/quramsoft/qrb/QuramBitmapFactory$Options;->mMidpointOffset:I

    return-void
.end method

.method public setWidth(I)V
    .locals 0

    iput p1, p0, Lcom/quramsoft/qrb/QuramBitmapFactory$Options;->mWidth:I

    return-void
.end method
