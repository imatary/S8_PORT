.class public Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$Removecommand;
.super Ljava/lang/Object;
.source "MotionPhotoActivity.java"

# interfaces
.implements Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$Command;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Removecommand"
.end annotation


# instance fields
.field private buttonControlManager:Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;

.field private imageListAdapter:Lcom/sec/android/mimage/photoretouching/agif/ImageListAdapter;

.field final synthetic this$0:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;


# direct methods
.method public constructor <init>(Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;Lcom/sec/android/mimage/photoretouching/agif/ImageListAdapter;Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$Removecommand;->this$0:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$Removecommand;->imageListAdapter:Lcom/sec/android/mimage/photoretouching/agif/ImageListAdapter;

    iput-object p3, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$Removecommand;->buttonControlManager:Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;

    return-void
.end method


# virtual methods
.method public execute()V
    .locals 0

    return-void
.end method

.method public execute(I)V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$Removecommand;->buttonControlManager:Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;->isLastAgifElement()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$Removecommand;->this$0:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;

    const v1, 0x7f070077

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$Removecommand;->buttonControlManager:Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;

    invoke-virtual {v0, p1, p0}, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;->removeButton(ILcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$Removecommand;)V

    goto :goto_0
.end method

.method public execute(Lcom/sec/android/mimage/photoretouching/agif/AgifMyButton;)Z
    .locals 5

    const/4 v1, 0x1

    const/4 v0, 0x0

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$Removecommand;->buttonControlManager:Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;

    invoke-virtual {v2}, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;->isLastAgifElement()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$Removecommand;->this$0:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;

    # getter for: Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->isBurstShotImage:Z
    invoke-static {v2}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->access$3300(Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$Removecommand;->this$0:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$Removecommand;->this$0:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;

    const v4, 0x7f07016f

    invoke-virtual {v3, v4}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v4, 0x2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v1, v0

    invoke-static {v3, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    :goto_0
    return v0

    :cond_0
    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$Removecommand;->this$0:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;

    const v2, 0x7f070077

    invoke-static {v1, v2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$Removecommand;->buttonControlManager:Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;

    invoke-virtual {v0, p1, p0}, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;->removeButton(Lcom/sec/android/mimage/photoretouching/agif/AgifMyButton;Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$Removecommand;)V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$Removecommand;->this$0:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;

    # getter for: Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->gsimLogsInstance:Lcom/sec/android/mimage/photoretouching/lpe/util/Utils$GSIMLogs;
    invoke-static {v0}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->access$6100(Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;)Lcom/sec/android/mimage/photoretouching/lpe/util/Utils$GSIMLogs;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils$GSIMLogs;->insertAgifEditInGSIMLog(I)V

    move v0, v1

    goto :goto_0
.end method

.method public removeAgifImage(IZ)V
    .locals 4

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$Removecommand;->imageListAdapter:Lcom/sec/android/mimage/photoretouching/agif/ImageListAdapter;

    invoke-virtual {v1, p1}, Lcom/sec/android/mimage/photoretouching/agif/ImageListAdapter;->removeAgifImage(I)V

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$Removecommand;->this$0:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;

    const v2, 0x7f0e033e

    invoke-virtual {v1, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$Removecommand;->this$0:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;

    iget-object v2, v2, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->mAdapter:Lcom/sec/android/mimage/photoretouching/agif/ImageListAdapter;

    iget-object v2, v2, Lcom/sec/android/mimage/photoretouching/agif/ImageListAdapter;->itemsPlayMode:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/high16 v1, 0x40800000    # 4.0f

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$Removecommand;->this$0:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;

    invoke-virtual {v2}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c009f

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    const v3, 0x3f19999a    # 0.6f

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/TextView;->semAddStrokeTextEffect(FIF)I

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$Removecommand;->this$0:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;

    # invokes: Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->updateFaceRectList(I)V
    invoke-static {v1, p1}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->access$7200(Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;I)V

    if-eqz p2, :cond_0

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$Removecommand;->this$0:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;

    invoke-virtual {v1, p1}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->playPauseAgif(I)V

    :cond_0
    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$Removecommand;->this$0:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;

    # invokes: Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->showSaveMenu()V
    invoke-static {v1}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->access$7300(Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;)V

    return-void
.end method
