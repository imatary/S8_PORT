.class Lcom/sec/android/wallpapercropper2/MultiLockCropActivity$3;
.super Ljava/lang/Object;
.source "MultiLockCropActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/wallpapercropper2/MultiLockCropActivity;->initActionBar()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/wallpapercropper2/MultiLockCropActivity;


# direct methods
.method constructor <init>(Lcom/sec/android/wallpapercropper2/MultiLockCropActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/wallpapercropper2/MultiLockCropActivity$3;->this$0:Lcom/sec/android/wallpapercropper2/MultiLockCropActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/wallpapercropper2/MultiLockCropActivity$3;->this$0:Lcom/sec/android/wallpapercropper2/MultiLockCropActivity;

    const-string/jumbo v1, "activity"

    invoke-virtual {v0, v1}, Lcom/sec/android/wallpapercropper2/MultiLockCropActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0c0001

    if-ne v0, v1, :cond_0

    const-string/jumbo v0, "Cropper2_MultiLock"

    const-string/jumbo v1, "click the save button"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/wallpapercropper2/MultiLockCropActivity$3;->this$0:Lcom/sec/android/wallpapercropper2/MultiLockCropActivity;

    invoke-static {v0}, Lcom/sec/android/wallpapercropper2/MultiLockCropActivity;->-wrap1(Lcom/sec/android/wallpapercropper2/MultiLockCropActivity;)V

    :cond_0
    return-void
.end method
