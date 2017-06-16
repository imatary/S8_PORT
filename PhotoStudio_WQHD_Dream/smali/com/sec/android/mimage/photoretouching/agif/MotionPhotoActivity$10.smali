.class Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$10;
.super Ljava/lang/Object;
.source "MotionPhotoActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->makeProgressDialog(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;


# direct methods
.method constructor <init>(Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$10;->this$0:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 2

    const/4 v0, 0x4

    if-ne p2, v0, :cond_0

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$10;->this$0:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;

    sget-object v1, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$DIALOG_TYPE;->RETURN_DIALOG:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$DIALOG_TYPE;

    # invokes: Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->setDialogContent(Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$DIALOG_TYPE;)V
    invoke-static {v0, v1}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->access$600(Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$DIALOG_TYPE;)V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$10;->this$0:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;

    # invokes: Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->showAlertDialog()V
    invoke-static {v0}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->access$700(Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;)V

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
