.class Lcom/naver/glink/android/sdk/login/neoid/NeoIdInAppBrowserActivity$1;
.super Ljava/lang/Object;
.source "NeoIdInAppBrowserActivity.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/naver/glink/android/sdk/login/neoid/NeoIdInAppBrowserActivity;->c()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/view/View;

.field final synthetic b:Lcom/naver/glink/android/sdk/login/neoid/NeoIdInAppBrowserActivity;


# direct methods
.method constructor <init>(Lcom/naver/glink/android/sdk/login/neoid/NeoIdInAppBrowserActivity;Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/naver/glink/android/sdk/login/neoid/NeoIdInAppBrowserActivity$1;->b:Lcom/naver/glink/android/sdk/login/neoid/NeoIdInAppBrowserActivity;

    iput-object p2, p0, Lcom/naver/glink/android/sdk/login/neoid/NeoIdInAppBrowserActivity$1;->a:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 2

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iget-object v1, p0, Lcom/naver/glink/android/sdk/login/neoid/NeoIdInAppBrowserActivity$1;->a:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    return-void
.end method
