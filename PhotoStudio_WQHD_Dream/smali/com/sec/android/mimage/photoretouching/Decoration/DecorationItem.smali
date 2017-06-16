.class public Lcom/sec/android/mimage/photoretouching/Decoration/DecorationItem;
.super Ljava/lang/Object;
.source "DecorationItem.java"


# instance fields
.field private id:I

.field private mBmp:Landroid/graphics/Bitmap;

.field private mEditTextinfo:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/mimage/photoretouching/lpe/util/EditTextInfo;",
            ">;"
        }
    .end annotation
.end field

.field private resId:I

.field private type:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;IILandroid/graphics/Bitmap;Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "II",
            "Landroid/graphics/Bitmap;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/mimage/photoretouching/lpe/util/EditTextInfo;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationItem;->type:Ljava/lang/String;

    iput p2, p0, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationItem;->id:I

    iput p3, p0, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationItem;->resId:I

    iput-object p4, p0, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationItem;->mBmp:Landroid/graphics/Bitmap;

    iput-object p5, p0, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationItem;->mEditTextinfo:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public getBmp()Landroid/graphics/Bitmap;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationItem;->mBmp:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getEditTextInfo()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/mimage/photoretouching/lpe/util/EditTextInfo;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationItem;->mEditTextinfo:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getId()I
    .locals 1

    iget v0, p0, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationItem;->id:I

    return v0
.end method

.method public getResId()I
    .locals 1

    iget v0, p0, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationItem;->resId:I

    return v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationItem;->type:Ljava/lang/String;

    return-object v0
.end method
