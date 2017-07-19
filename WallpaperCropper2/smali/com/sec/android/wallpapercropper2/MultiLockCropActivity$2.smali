.class Lcom/sec/android/wallpapercropper2/MultiLockCropActivity$2;
.super Ljava/lang/Object;
.source "MultiLockCropActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/wallpapercropper2/MultiLockCropActivity;->initView()V
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

    iput-object p1, p0, Lcom/sec/android/wallpapercropper2/MultiLockCropActivity$2;->this$0:Lcom/sec/android/wallpapercropper2/MultiLockCropActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/sec/android/wallpapercropper2/MultiLockCropActivity$2;->this$0:Lcom/sec/android/wallpapercropper2/MultiLockCropActivity;

    invoke-static {v0}, Lcom/sec/android/wallpapercropper2/MultiLockCropActivity;->-get0(Lcom/sec/android/wallpapercropper2/MultiLockCropActivity;)Lcom/sec/android/multilock/ThumbnailListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/multilock/ThumbnailListAdapter;->getCurrentPosition()I

    move-result v0

    if-eq v0, p3, :cond_0

    iget-object v0, p0, Lcom/sec/android/wallpapercropper2/MultiLockCropActivity$2;->this$0:Lcom/sec/android/wallpapercropper2/MultiLockCropActivity;

    invoke-static {v0}, Lcom/sec/android/wallpapercropper2/MultiLockCropActivity;->-get0(Lcom/sec/android/wallpapercropper2/MultiLockCropActivity;)Lcom/sec/android/multilock/ThumbnailListAdapter;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/sec/android/multilock/ThumbnailListAdapter;->setCurrentPosition(I)V

    :cond_0
    return-void
.end method
