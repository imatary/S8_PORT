.class public Lcom/naver/glink/android/sdk/ui/articles/a$b;
.super Ljava/lang/Object;
.source "ArticlesAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/naver/glink/android/sdk/ui/articles/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field public final a:I

.field public final b:Lcom/naver/glink/android/sdk/model/Article;


# direct methods
.method constructor <init>(ILcom/naver/glink/android/sdk/model/Article;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/naver/glink/android/sdk/ui/articles/a$b;->a:I

    iput-object p2, p0, Lcom/naver/glink/android/sdk/ui/articles/a$b;->b:Lcom/naver/glink/android/sdk/model/Article;

    return-void
.end method
