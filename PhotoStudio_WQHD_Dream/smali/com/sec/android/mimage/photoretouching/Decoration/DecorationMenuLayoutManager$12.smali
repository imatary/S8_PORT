.class Lcom/sec/android/mimage/photoretouching/Decoration/DecorationMenuLayoutManager$12;
.super Ljava/lang/Object;
.source "DecorationMenuLayoutManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/mimage/photoretouching/Decoration/DecorationMenuLayoutManager;->onDownloadStickerUpdateReceived(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/mimage/photoretouching/Decoration/DecorationMenuLayoutManager;


# direct methods
.method constructor <init>(Lcom/sec/android/mimage/photoretouching/Decoration/DecorationMenuLayoutManager;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationMenuLayoutManager$12;->this$0:Lcom/sec/android/mimage/photoretouching/Decoration/DecorationMenuLayoutManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationMenuLayoutManager$12;->this$0:Lcom/sec/android/mimage/photoretouching/Decoration/DecorationMenuLayoutManager;

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationMenuLayoutManager;->mSuperImpose:Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->setStateToSticker()V

    return-void
.end method
