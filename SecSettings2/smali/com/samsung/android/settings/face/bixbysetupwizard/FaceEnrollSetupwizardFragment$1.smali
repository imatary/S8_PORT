.class Lcom/samsung/android/settings/face/bixbysetupwizard/FaceEnrollSetupwizardFragment$1;
.super Ljava/lang/Object;
.source "FaceEnrollSetupwizardFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/face/bixbysetupwizard/FaceEnrollSetupwizardFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/face/bixbysetupwizard/FaceEnrollSetupwizardFragment;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/face/bixbysetupwizard/FaceEnrollSetupwizardFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceEnrollSetupwizardFragment$1;->this$0:Lcom/samsung/android/settings/face/bixbysetupwizard/FaceEnrollSetupwizardFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceEnrollSetupwizardFragment$1;->this$0:Lcom/samsung/android/settings/face/bixbysetupwizard/FaceEnrollSetupwizardFragment;

    invoke-static {v0}, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceEnrollSetupwizardFragment;->-get0(Lcom/samsung/android/settings/face/bixbysetupwizard/FaceEnrollSetupwizardFragment;)Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceEnrollSetupwizardFragment$1;->this$0:Lcom/samsung/android/settings/face/bixbysetupwizard/FaceEnrollSetupwizardFragment;

    invoke-static {v0}, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceEnrollSetupwizardFragment;->-get1(Lcom/samsung/android/settings/face/bixbysetupwizard/FaceEnrollSetupwizardFragment;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceEnrollSetupwizardFragment$1;->this$0:Lcom/samsung/android/settings/face/bixbysetupwizard/FaceEnrollSetupwizardFragment;

    invoke-static {v0}, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceEnrollSetupwizardFragment;->-get0(Lcom/samsung/android/settings/face/bixbysetupwizard/FaceEnrollSetupwizardFragment;)Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceEnrollSetupwizardFragment$1;->this$0:Lcom/samsung/android/settings/face/bixbysetupwizard/FaceEnrollSetupwizardFragment;

    invoke-static {v1}, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceEnrollSetupwizardFragment;->-get1(Lcom/samsung/android/settings/face/bixbysetupwizard/FaceEnrollSetupwizardFragment;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->startEnrollment(Landroid/view/View;)V

    :cond_0
    return-void
.end method
