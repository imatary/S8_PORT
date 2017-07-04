.class Lcom/sec/android/gallery3d/data/LocalVideo$DeleteOperation;
.super Ljava/lang/Object;
.source "LocalVideo.java"

# interfaces
.implements Lcom/sec/android/gallery3d/data/dboperation/IOperation;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/gallery3d/data/LocalVideo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DeleteOperation"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/gallery3d/data/LocalVideo;


# direct methods
.method private constructor <init>(Lcom/sec/android/gallery3d/data/LocalVideo;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/gallery3d/data/LocalVideo$DeleteOperation;->this$0:Lcom/sec/android/gallery3d/data/LocalVideo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/android/gallery3d/data/LocalVideo;Lcom/sec/android/gallery3d/data/LocalVideo$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/gallery3d/data/LocalVideo$DeleteOperation;-><init>(Lcom/sec/android/gallery3d/data/LocalVideo;)V

    return-void
.end method


# virtual methods
.method public apply()Z
    .locals 2

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/LocalVideo$DeleteOperation;->this$0:Lcom/sec/android/gallery3d/data/LocalVideo;

    invoke-static {v0, v1}, Lcom/sec/android/gallery3d/data/LocalVideo;->access$102(Lcom/sec/android/gallery3d/data/LocalVideo;Z)Z

    return v1
.end method
