.class Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose$4;
.super Ljava/lang/Object;
.source "SuperImpose.java"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->showDialog(I)V
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

    iput-object p1, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose$4;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 1

    const/4 v0, 0x4

    if-ne p2, v0, :cond_0

    const/4 v0, 0x1

    invoke-static {v0}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->setLabelStyleNum(I)V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose$4;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->mLabelDialog:Landroid/app/AlertDialog;
    invoke-static {v0}, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->access$600(Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    invoke-static {}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->isDreamChina()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose$4;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;

    # invokes: Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->enableLabelPicker()V
    invoke-static {v0}, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->access$700(Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;)V

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
