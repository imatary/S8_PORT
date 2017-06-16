.class public Lcom/sec/android/mimage/photoretouching/Decoration/StickerInfo;
.super Ljava/lang/Object;
.source "StickerInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/sec/android/mimage/photoretouching/Decoration/StickerInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private isGif:I

.field private isPerspectiveApplied:I

.field private mAngle:F

.field private mBitmapHeight:I

.field private mBitmapWidth:I

.field private mCenterX:F

.field private mCenterY:F

.field private mExtras:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mHeight:F

.field private mPointArray:[F

.field private mType:I

.field private mWidth:F

.field private noOfFrames:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/sec/android/mimage/photoretouching/Decoration/StickerInfo$1;

    invoke-direct {v0}, Lcom/sec/android/mimage/photoretouching/Decoration/StickerInfo$1;-><init>()V

    sput-object v0, Lcom/sec/android/mimage/photoretouching/Decoration/StickerInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(FFFFFZIIIILjava/util/ArrayList;Z[F)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(FFFFFZIIII",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;Z[F)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v2, 0x0

    iput v2, p0, Lcom/sec/android/mimage/photoretouching/Decoration/StickerInfo;->mAngle:F

    const/4 v2, 0x0

    iput v2, p0, Lcom/sec/android/mimage/photoretouching/Decoration/StickerInfo;->isPerspectiveApplied:I

    iput p1, p0, Lcom/sec/android/mimage/photoretouching/Decoration/StickerInfo;->mAngle:F

    iput p2, p0, Lcom/sec/android/mimage/photoretouching/Decoration/StickerInfo;->mCenterX:F

    iput p3, p0, Lcom/sec/android/mimage/photoretouching/Decoration/StickerInfo;->mCenterY:F

    iput p4, p0, Lcom/sec/android/mimage/photoretouching/Decoration/StickerInfo;->mWidth:F

    iput p5, p0, Lcom/sec/android/mimage/photoretouching/Decoration/StickerInfo;->mHeight:F

    if-eqz p6, :cond_0

    const/4 v2, 0x1

    iput v2, p0, Lcom/sec/android/mimage/photoretouching/Decoration/StickerInfo;->isGif:I

    :goto_0
    iput p7, p0, Lcom/sec/android/mimage/photoretouching/Decoration/StickerInfo;->noOfFrames:I

    iput p8, p0, Lcom/sec/android/mimage/photoretouching/Decoration/StickerInfo;->mBitmapWidth:I

    iput p9, p0, Lcom/sec/android/mimage/photoretouching/Decoration/StickerInfo;->mBitmapHeight:I

    move/from16 v0, p10

    iput v0, p0, Lcom/sec/android/mimage/photoretouching/Decoration/StickerInfo;->mType:I

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/sec/android/mimage/photoretouching/Decoration/StickerInfo;->mExtras:Ljava/util/ArrayList;

    invoke-virtual/range {p11 .. p11}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/Decoration/StickerInfo;->mExtras:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_0
    const/4 v2, 0x0

    iput v2, p0, Lcom/sec/android/mimage/photoretouching/Decoration/StickerInfo;->isGif:I

    goto :goto_0

    :cond_1
    if-eqz p12, :cond_2

    const/4 v2, 0x1

    :goto_2
    iput v2, p0, Lcom/sec/android/mimage/photoretouching/Decoration/StickerInfo;->isPerspectiveApplied:I

    move-object/from16 v0, p13

    array-length v2, v0

    new-array v2, v2, [F

    iput-object v2, p0, Lcom/sec/android/mimage/photoretouching/Decoration/StickerInfo;->mPointArray:[F

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/Decoration/StickerInfo;->mPointArray:[F

    const/4 v4, 0x0

    move-object/from16 v0, p13

    array-length v5, v0

    move-object/from16 v0, p13

    invoke-static {v0, v2, v3, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const-string v2, "shruthi"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " mType  = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/sec/android/mimage/photoretouching/Decoration/StickerInfo;->mType:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "   Extras "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/Decoration/StickerInfo;->mExtras:Ljava/util/ArrayList;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2
    const/4 v2, 0x0

    goto :goto_2
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/mimage/photoretouching/Decoration/StickerInfo;->mAngle:F

    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/mimage/photoretouching/Decoration/StickerInfo;->isPerspectiveApplied:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/sec/android/mimage/photoretouching/Decoration/StickerInfo;->mAngle:F

    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/sec/android/mimage/photoretouching/Decoration/StickerInfo;->mCenterX:F

    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/sec/android/mimage/photoretouching/Decoration/StickerInfo;->mCenterY:F

    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/sec/android/mimage/photoretouching/Decoration/StickerInfo;->mWidth:F

    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/sec/android/mimage/photoretouching/Decoration/StickerInfo;->mHeight:F

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/sec/android/mimage/photoretouching/Decoration/StickerInfo;->isGif:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/sec/android/mimage/photoretouching/Decoration/StickerInfo;->noOfFrames:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/sec/android/mimage/photoretouching/Decoration/StickerInfo;->mBitmapWidth:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/sec/android/mimage/photoretouching/Decoration/StickerInfo;->mBitmapHeight:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/sec/android/mimage/photoretouching/Decoration/StickerInfo;->mType:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/Decoration/StickerInfo;->mExtras:Ljava/util/ArrayList;

    const/16 v0, 0xe

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/Decoration/StickerInfo;->mPointArray:[F

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/Decoration/StickerInfo;->mExtras:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readStringList(Ljava/util/List;)V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/Decoration/StickerInfo;->mPointArray:[F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readFloatArray([F)V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/sec/android/mimage/photoretouching/Decoration/StickerInfo;->isPerspectiveApplied:I

    const-string v0, "shruthi"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " COMIJN HERE   mType  = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/mimage/photoretouching/Decoration/StickerInfo;->mType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "   Extras "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/Decoration/StickerInfo;->mExtras:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getAngle()F
    .locals 1

    iget v0, p0, Lcom/sec/android/mimage/photoretouching/Decoration/StickerInfo;->mAngle:F

    return v0
.end method

.method public getBitmapHeight()I
    .locals 1

    iget v0, p0, Lcom/sec/android/mimage/photoretouching/Decoration/StickerInfo;->mBitmapHeight:I

    return v0
.end method

.method public getBitmapWidth()I
    .locals 1

    iget v0, p0, Lcom/sec/android/mimage/photoretouching/Decoration/StickerInfo;->mBitmapWidth:I

    return v0
.end method

.method public getCenter()[F
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [F

    const/4 v1, 0x0

    iget v2, p0, Lcom/sec/android/mimage/photoretouching/Decoration/StickerInfo;->mCenterX:F

    aput v2, v0, v1

    const/4 v1, 0x1

    iget v2, p0, Lcom/sec/android/mimage/photoretouching/Decoration/StickerInfo;->mCenterY:F

    aput v2, v0, v1

    return-object v0
.end method

.method public getExtras()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/Decoration/StickerInfo;->mExtras:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getNoOfFrames()I
    .locals 1

    iget v0, p0, Lcom/sec/android/mimage/photoretouching/Decoration/StickerInfo;->noOfFrames:I

    return v0
.end method

.method public getPointArray()[F
    .locals 1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/Decoration/StickerInfo;->mPointArray:[F

    return-object v0
.end method

.method public getSize()[F
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [F

    const/4 v1, 0x0

    iget v2, p0, Lcom/sec/android/mimage/photoretouching/Decoration/StickerInfo;->mWidth:F

    aput v2, v0, v1

    const/4 v1, 0x1

    iget v2, p0, Lcom/sec/android/mimage/photoretouching/Decoration/StickerInfo;->mHeight:F

    aput v2, v0, v1

    return-object v0
.end method

.method public getType()I
    .locals 1

    iget v0, p0, Lcom/sec/android/mimage/photoretouching/Decoration/StickerInfo;->mType:I

    return v0
.end method

.method public isGif()Z
    .locals 2

    const/4 v0, 0x1

    iget v1, p0, Lcom/sec/android/mimage/photoretouching/Decoration/StickerInfo;->isGif:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isPerspectiveApplied()Z
    .locals 2

    const/4 v0, 0x1

    iget v1, p0, Lcom/sec/android/mimage/photoretouching/Decoration/StickerInfo;->isPerspectiveApplied:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    iget v0, p0, Lcom/sec/android/mimage/photoretouching/Decoration/StickerInfo;->mAngle:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    iget v0, p0, Lcom/sec/android/mimage/photoretouching/Decoration/StickerInfo;->mCenterX:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    iget v0, p0, Lcom/sec/android/mimage/photoretouching/Decoration/StickerInfo;->mCenterY:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    iget v0, p0, Lcom/sec/android/mimage/photoretouching/Decoration/StickerInfo;->mWidth:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    iget v0, p0, Lcom/sec/android/mimage/photoretouching/Decoration/StickerInfo;->mHeight:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    iget v0, p0, Lcom/sec/android/mimage/photoretouching/Decoration/StickerInfo;->isGif:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/sec/android/mimage/photoretouching/Decoration/StickerInfo;->noOfFrames:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/sec/android/mimage/photoretouching/Decoration/StickerInfo;->mBitmapWidth:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/sec/android/mimage/photoretouching/Decoration/StickerInfo;->mBitmapHeight:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/sec/android/mimage/photoretouching/Decoration/StickerInfo;->mType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/Decoration/StickerInfo;->mExtras:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/Decoration/StickerInfo;->mPointArray:[F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloatArray([F)V

    iget v0, p0, Lcom/sec/android/mimage/photoretouching/Decoration/StickerInfo;->isPerspectiveApplied:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
