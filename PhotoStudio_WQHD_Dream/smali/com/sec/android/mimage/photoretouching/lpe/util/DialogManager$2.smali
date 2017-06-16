.class Lcom/sec/android/mimage/photoretouching/lpe/util/DialogManager$2;
.super Ljava/lang/Object;
.source "DialogManager.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/mimage/photoretouching/lpe/util/DialogManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/mimage/photoretouching/lpe/util/DialogManager;


# direct methods
.method constructor <init>(Lcom/sec/android/mimage/photoretouching/lpe/util/DialogManager;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/DialogManager$2;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/util/DialogManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/DialogManager$2;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/util/DialogManager;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/util/DialogManager;->mDialogListener:Lcom/sec/android/mimage/photoretouching/lpe/util/DialogManager$DialogListener;
    invoke-static {v0}, Lcom/sec/android/mimage/photoretouching/lpe/util/DialogManager;->access$000(Lcom/sec/android/mimage/photoretouching/lpe/util/DialogManager;)Lcom/sec/android/mimage/photoretouching/lpe/util/DialogManager$DialogListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/DialogManager$2;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/util/DialogManager;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/util/DialogManager;->mDialogListener:Lcom/sec/android/mimage/photoretouching/lpe/util/DialogManager$DialogListener;
    invoke-static {v0}, Lcom/sec/android/mimage/photoretouching/lpe/util/DialogManager;->access$000(Lcom/sec/android/mimage/photoretouching/lpe/util/DialogManager;)Lcom/sec/android/mimage/photoretouching/lpe/util/DialogManager$DialogListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/mimage/photoretouching/lpe/util/DialogManager$DialogListener;->onCancel()V

    :cond_0
    return-void
.end method
