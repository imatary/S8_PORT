.class Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$22;
.super Ljava/lang/Object;
.source "MotionPhotoActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->showHideEditSubmenuForFirstTime()V
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

    iput-object p1, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$22;->this$0:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$22;->this$0:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;

    const v2, 0x7f0e0347

    invoke-virtual {v1, v2}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$22;->this$0:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;

    iget-object v1, v1, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->editMenuListener:Landroid/view/View$OnClickListener;

    invoke-interface {v1, v0}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$22;->this$0:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;

    # invokes: Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->setContentDescriptionForUI()V
    invoke-static {v1}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->access$400(Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;)V

    return-void
.end method
