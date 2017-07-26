.class public Lcom/naver/glink/android/sdk/ui/write/WriteFragmentView$a;
.super Lcom/naver/glink/android/sdk/model/BaseModel;
.source "WriteFragmentView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/naver/glink/android/sdk/ui/write/WriteFragmentView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public final a:Lcom/naver/glink/android/sdk/api/Responses$SaveArticleResponse;


# direct methods
.method constructor <init>(Lcom/naver/glink/android/sdk/api/Responses$SaveArticleResponse;)V
    .locals 0

    invoke-direct {p0}, Lcom/naver/glink/android/sdk/model/BaseModel;-><init>()V

    iput-object p1, p0, Lcom/naver/glink/android/sdk/ui/write/WriteFragmentView$a;->a:Lcom/naver/glink/android/sdk/api/Responses$SaveArticleResponse;

    return-void
.end method
