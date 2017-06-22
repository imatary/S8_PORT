.class Lcom/sec/android/mimage/photoretouching/lpe/attach/AttachSheetFragment$2;
.super Ljava/lang/Object;
.source "AttachSheetFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/mimage/photoretouching/lpe/attach/AttachSheetFragment;->hideSwipeInfo(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/mimage/photoretouching/lpe/attach/AttachSheetFragment;


# direct methods
.method constructor <init>(Lcom/sec/android/mimage/photoretouching/lpe/attach/AttachSheetFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/mimage/photoretouching/lpe/attach/AttachSheetFragment$2;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/attach/AttachSheetFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/attach/AttachSheetFragment$2;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/attach/AttachSheetFragment;

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/attach/AttachSheetFragment;->mSwipeInfoText:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/attach/AttachSheetFragment$2;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/attach/AttachSheetFragment;

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/attach/AttachSheetFragment;->mSwipeInfoText:Landroid/widget/TextView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/attach/AttachSheetFragment$2;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/attach/AttachSheetFragment;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/sec/android/mimage/photoretouching/lpe/attach/AttachSheetFragment;->mSwipeInfoText:Landroid/widget/TextView;

    :cond_0
    return-void
.end method
