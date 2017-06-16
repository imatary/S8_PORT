.class Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager$14;
.super Ljava/lang/Object;
.source "StateManager.java"

# interfaces
.implements Lcom/sec/android/mimage/photoretouching/lpe/util/DialogManager$DialogListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;->onMenuLongClicked(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;


# direct methods
.method constructor <init>(Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager$14;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel()V
    .locals 0

    return-void
.end method

.method public onOk()V
    .locals 3

    sget-object v0, Lcom/sec/android/mimage/photoretouching/lpe/util/Constants;->SCREEN_MAIN:Ljava/lang/String;

    sget-object v1, Lcom/sec/android/mimage/photoretouching/lpe/util/Constants;->FEATURE_UNDO_ALL_DIALOG:Ljava/lang/String;

    const-string v2, "Undo all"

    invoke-static {v0, v1, v2}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->insertEventSALog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager$14;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;
    invoke-static {v0}, Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;->access$200(Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;)Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getAppContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "E102"

    invoke-static {v0, v1}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->insertLog(Landroid/content/Context;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager$14;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;->doUndoAll()V

    return-void
.end method

.method public onOther(Ljava/lang/Object;)V
    .locals 3

    sget-object v0, Lcom/sec/android/mimage/photoretouching/lpe/util/Constants;->SCREEN_MAIN:Ljava/lang/String;

    sget-object v1, Lcom/sec/android/mimage/photoretouching/lpe/util/Constants;->FEATURE_CANCEL_UNDO_ALL:Ljava/lang/String;

    const-string v2, "Cancel"

    invoke-static {v0, v1, v2}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->insertEventSALog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
