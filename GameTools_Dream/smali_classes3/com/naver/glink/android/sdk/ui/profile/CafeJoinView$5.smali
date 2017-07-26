.class Lcom/naver/glink/android/sdk/ui/profile/CafeJoinView$5;
.super Ljava/lang/Object;
.source "CafeJoinView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/naver/glink/android/sdk/ui/profile/CafeJoinView;->a(Landroid/content/Context;Lcom/naver/glink/android/sdk/api/Responses$MemberResponse;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lcom/naver/glink/android/sdk/ui/profile/CafeJoinView;


# direct methods
.method constructor <init>(Lcom/naver/glink/android/sdk/ui/profile/CafeJoinView;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/naver/glink/android/sdk/ui/profile/CafeJoinView$5;->b:Lcom/naver/glink/android/sdk/ui/profile/CafeJoinView;

    iput-object p2, p0, Lcom/naver/glink/android/sdk/ui/profile/CafeJoinView$5;->a:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/profile/CafeJoinView$5;->a:Landroid/content/Context;

    const-string/jumbo v1, "http://cafe.naver.com/common/cafein_service.htm"

    invoke-static {v0, v1}, Lcom/naver/glink/android/sdk/a/f;->a(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method
