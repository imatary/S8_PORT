.class Lcom/sec/android/mimage/photoretouching/lpe/attach/AttachSheetFragment$4;
.super Ljava/lang/Object;
.source "AttachSheetFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/mimage/photoretouching/lpe/attach/AttachSheetFragment;->showPermissionDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/mimage/photoretouching/lpe/attach/AttachSheetFragment;

.field final synthetic val$permissions:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/sec/android/mimage/photoretouching/lpe/attach/AttachSheetFragment;Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/mimage/photoretouching/lpe/attach/AttachSheetFragment$4;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/attach/AttachSheetFragment;

    iput-object p2, p0, Lcom/sec/android/mimage/photoretouching/lpe/attach/AttachSheetFragment$4;->val$permissions:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/attach/AttachSheetFragment$4;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/attach/AttachSheetFragment;

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/lpe/attach/AttachSheetFragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/attach/AttachSheetFragment$4;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/attach/AttachSheetFragment;

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/attach/AttachSheetFragment$4;->val$permissions:Ljava/util/List;

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/attach/AttachSheetFragment$4;->val$permissions:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [Ljava/lang/String;

    invoke-interface {v0, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    const/16 v2, 0xc

    invoke-virtual {v1, v0, v2}, Lcom/sec/android/mimage/photoretouching/lpe/attach/AttachSheetFragment;->requestPermissions([Ljava/lang/String;I)V

    :cond_0
    return-void
.end method
