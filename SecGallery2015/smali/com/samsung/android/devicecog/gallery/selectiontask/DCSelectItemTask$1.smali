.class Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectItemTask$1;
.super Ljava/lang/Object;
.source "DCSelectItemTask.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectItemTask;->onCancelled()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectItemTask;


# direct methods
.method constructor <init>(Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectItemTask;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectItemTask$1;->this$0:Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectItemTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectItemTask$1;->this$0:Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectItemTask;

    iget-object v0, v0, Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectItemTask;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectItemTask$1;->this$0:Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectItemTask;

    iget-object v0, v0, Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectItemTask;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    const v1, 0x7f0a0082

    invoke-static {v0, v1}, Lcom/sec/android/gallery3d/common/Utils;->showToast(Landroid/content/Context;I)V

    :cond_0
    return-void
.end method
