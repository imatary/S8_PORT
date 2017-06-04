.class Lcom/samsung/android/app/omcagent/ui/OmcSetUpActivity$4;
.super Ljava/lang/Object;
.source "OmcSetUpActivity.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/omcagent/ui/OmcSetUpActivity;->resetAnimation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/omcagent/ui/OmcSetUpActivity;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/omcagent/ui/OmcSetUpActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/omcagent/ui/OmcSetUpActivity$4;->this$0:Lcom/samsung/android/app/omcagent/ui/OmcSetUpActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreDraw()Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/omcagent/ui/OmcSetUpActivity$4;->this$0:Lcom/samsung/android/app/omcagent/ui/OmcSetUpActivity;

    # getter for: Lcom/samsung/android/app/omcagent/ui/OmcSetUpActivity;->title_text:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/samsung/android/app/omcagent/ui/OmcSetUpActivity;->access$300(Lcom/samsung/android/app/omcagent/ui/OmcSetUpActivity;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    iget-object v0, p0, Lcom/samsung/android/app/omcagent/ui/OmcSetUpActivity$4;->this$0:Lcom/samsung/android/app/omcagent/ui/OmcSetUpActivity;

    # invokes: Lcom/samsung/android/app/omcagent/ui/OmcSetUpActivity;->startInitAnimation()V
    invoke-static {v0}, Lcom/samsung/android/app/omcagent/ui/OmcSetUpActivity;->access$400(Lcom/samsung/android/app/omcagent/ui/OmcSetUpActivity;)V

    iget-object v0, p0, Lcom/samsung/android/app/omcagent/ui/OmcSetUpActivity$4;->this$0:Lcom/samsung/android/app/omcagent/ui/OmcSetUpActivity;

    # invokes: Lcom/samsung/android/app/omcagent/ui/OmcSetUpActivity;->startArrowFadeInAnimation()V
    invoke-static {v0}, Lcom/samsung/android/app/omcagent/ui/OmcSetUpActivity;->access$500(Lcom/samsung/android/app/omcagent/ui/OmcSetUpActivity;)V

    const/4 v0, 0x1

    return v0
.end method
