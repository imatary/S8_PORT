.class Lcom/samsung/android/app/omcagent/ui/OmcSetUpActivity$6;
.super Ljava/lang/Object;
.source "OmcSetUpActivity.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/omcagent/ui/OmcSetUpActivity;
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

    iput-object p1, p0, Lcom/samsung/android/app/omcagent/ui/OmcSetUpActivity$6;->this$0:Lcom/samsung/android/app/omcagent/ui/OmcSetUpActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/omcagent/ui/OmcSetUpActivity$6;->this$0:Lcom/samsung/android/app/omcagent/ui/OmcSetUpActivity;

    # invokes: Lcom/samsung/android/app/omcagent/ui/OmcSetUpActivity;->startArrowFadeInAnimation()V
    invoke-static {v0}, Lcom/samsung/android/app/omcagent/ui/OmcSetUpActivity;->access$500(Lcom/samsung/android/app/omcagent/ui/OmcSetUpActivity;)V

    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method
