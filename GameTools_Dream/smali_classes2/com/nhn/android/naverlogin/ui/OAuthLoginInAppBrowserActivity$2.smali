.class Lcom/nhn/android/naverlogin/ui/OAuthLoginInAppBrowserActivity$2;
.super Ljava/lang/Object;
.source "OAuthLoginInAppBrowserActivity.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nhn/android/naverlogin/ui/OAuthLoginInAppBrowserActivity;->registerSizeChangeListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nhn/android/naverlogin/ui/OAuthLoginInAppBrowserActivity;

.field private final synthetic val$activityRootView:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/nhn/android/naverlogin/ui/OAuthLoginInAppBrowserActivity;Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/nhn/android/naverlogin/ui/OAuthLoginInAppBrowserActivity$2;->this$0:Lcom/nhn/android/naverlogin/ui/OAuthLoginInAppBrowserActivity;

    iput-object p2, p0, Lcom/nhn/android/naverlogin/ui/OAuthLoginInAppBrowserActivity$2;->val$activityRootView:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 5

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iget-object v2, p0, Lcom/nhn/android/naverlogin/ui/OAuthLoginInAppBrowserActivity$2;->val$activityRootView:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    iget-object v2, p0, Lcom/nhn/android/naverlogin/ui/OAuthLoginInAppBrowserActivity$2;->val$activityRootView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    iget v3, v1, Landroid/graphics/Rect;->bottom:I

    iget v4, v1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v3, v4

    sub-int v0, v2, v3

    const/16 v2, 0x64

    if-le v0, v2, :cond_0

    iget-object v2, p0, Lcom/nhn/android/naverlogin/ui/OAuthLoginInAppBrowserActivity$2;->this$0:Lcom/nhn/android/naverlogin/ui/OAuthLoginInAppBrowserActivity;

    invoke-static {v2}, Lcom/nhn/android/naverlogin/ui/OAuthLoginInAppBrowserActivity;->access$5(Lcom/nhn/android/naverlogin/ui/OAuthLoginInAppBrowserActivity;)Landroid/widget/LinearLayout;

    move-result-object v2

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :goto_0
    return-void

    :cond_0
    iget-object v2, p0, Lcom/nhn/android/naverlogin/ui/OAuthLoginInAppBrowserActivity$2;->this$0:Lcom/nhn/android/naverlogin/ui/OAuthLoginInAppBrowserActivity;

    invoke-static {v2}, Lcom/nhn/android/naverlogin/ui/OAuthLoginInAppBrowserActivity;->access$5(Lcom/nhn/android/naverlogin/ui/OAuthLoginInAppBrowserActivity;)Landroid/widget/LinearLayout;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0
.end method
