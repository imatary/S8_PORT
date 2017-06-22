.class Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose$9;
.super Ljava/lang/Object;
.source "SuperImpose.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->setImageLoadingFalse()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;


# direct methods
.method constructor <init>(Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose$9;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose$9;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;

    const/4 v1, 0x0

    # setter for: Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->isImageLoading:Z
    invoke-static {v0, v1}, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->access$1202(Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;Z)Z

    return-void
.end method
