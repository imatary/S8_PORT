.class Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$ButtonWrapper;
.super Ljava/lang/Object;
.source "MotionPhotoActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ButtonWrapper"
.end annotation


# instance fields
.field private context:Landroid/content/Context;

.field private layout:Landroid/view/View;

.field final synthetic this$0:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;


# direct methods
.method public constructor <init>(Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;Landroid/view/View;Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    iput-object p1, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$ButtonWrapper;->this$0:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$ButtonWrapper;->layout:Landroid/view/View;

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$ButtonWrapper;->context:Landroid/content/Context;

    iput-object p2, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$ButtonWrapper;->layout:Landroid/view/View;

    iput-object p3, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$ButtonWrapper;->context:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public changeIconNText(II)V
    .locals 3

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$ButtonWrapper;->layout:Landroid/view/View;

    const v2, 0x7f0e0088

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(I)V

    :cond_0
    return-void
.end method

.method public destroy()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$ButtonWrapper;->layout:Landroid/view/View;

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$ButtonWrapper;->context:Landroid/content/Context;

    return-void
.end method

.method public getId()I
    .locals 1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$ButtonWrapper;->layout:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v0

    return v0
.end method

.method public isEnabled()Z
    .locals 1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$ButtonWrapper;->layout:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->isEnabled()Z

    move-result v0

    return v0
.end method

.method public setContentDescription(Landroid/view/View;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$ButtonWrapper;->context:Landroid/content/Context;

    invoke-static {v0, p2}, Lcom/sec/android/mimage/photoretouching/agif/util/QuramUtil;->getContenDescriptionButton(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setDoneHovering(Landroid/widget/LinearLayout;)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$ButtonWrapper;->this$0:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;

    const v1, 0x7f0700da

    invoke-virtual {v0, v1}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setEnabled(Z)V
    .locals 3

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$ButtonWrapper;->layout:Landroid/view/View;

    invoke-virtual {v1, p1}, Landroid/view/View;->setEnabled(Z)V

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$ButtonWrapper;->layout:Landroid/view/View;

    const v2, 0x7f0e0088

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    :cond_0
    return-void
.end method

.method public setOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$ButtonWrapper;->layout:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
