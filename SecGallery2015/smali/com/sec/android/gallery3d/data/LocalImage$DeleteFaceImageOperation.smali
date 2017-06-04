.class Lcom/sec/android/gallery3d/data/LocalImage$DeleteFaceImageOperation;
.super Ljava/lang/Object;
.source "LocalImage.java"

# interfaces
.implements Lcom/sec/android/gallery3d/data/dboperation/IOperation;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/gallery3d/data/LocalImage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DeleteFaceImageOperation"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/gallery3d/data/LocalImage;


# direct methods
.method private constructor <init>(Lcom/sec/android/gallery3d/data/LocalImage;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/gallery3d/data/LocalImage$DeleteFaceImageOperation;->this$0:Lcom/sec/android/gallery3d/data/LocalImage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/android/gallery3d/data/LocalImage;Lcom/sec/android/gallery3d/data/LocalImage$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/gallery3d/data/LocalImage$DeleteFaceImageOperation;-><init>(Lcom/sec/android/gallery3d/data/LocalImage;)V

    return-void
.end method


# virtual methods
.method public apply()Z
    .locals 2

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/LocalImage$DeleteFaceImageOperation;->this$0:Lcom/sec/android/gallery3d/data/LocalImage;

    # setter for: Lcom/sec/android/gallery3d/data/LocalImage;->mIsDeleted:Z
    invoke-static {v0, v1}, Lcom/sec/android/gallery3d/data/LocalImage;->access$1202(Lcom/sec/android/gallery3d/data/LocalImage;Z)Z

    invoke-static {}, Lcom/sec/android/gallery3d/data/MediaObject;->setArcVersionNumber()V

    return v1
.end method
