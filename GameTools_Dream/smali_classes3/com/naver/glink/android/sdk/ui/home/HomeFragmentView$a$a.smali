.class Lcom/naver/glink/android/sdk/ui/home/HomeFragmentView$a$a;
.super Ljava/lang/Object;
.source "HomeFragmentView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/naver/glink/android/sdk/ui/home/HomeFragmentView$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final a:I

.field final b:Lcom/naver/glink/android/sdk/api/Responses$HomeResponse$HomeBanner;

.field final synthetic c:Lcom/naver/glink/android/sdk/ui/home/HomeFragmentView$a;


# direct methods
.method constructor <init>(Lcom/naver/glink/android/sdk/ui/home/HomeFragmentView$a;ILcom/naver/glink/android/sdk/api/Responses$HomeResponse$HomeBanner;)V
    .locals 0

    iput-object p1, p0, Lcom/naver/glink/android/sdk/ui/home/HomeFragmentView$a$a;->c:Lcom/naver/glink/android/sdk/ui/home/HomeFragmentView$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lcom/naver/glink/android/sdk/ui/home/HomeFragmentView$a$a;->a:I

    iput-object p3, p0, Lcom/naver/glink/android/sdk/ui/home/HomeFragmentView$a$a;->b:Lcom/naver/glink/android/sdk/api/Responses$HomeResponse$HomeBanner;

    return-void
.end method
