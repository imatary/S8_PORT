.class Lcom/naver/glink/android/sdk/ui/parent/plugfragment/a$a;
.super Ljava/lang/Object;
.source "FragmentViewManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/naver/glink/android/sdk/ui/parent/plugfragment/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field a:Ljava/lang/String;

.field b:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Lcom/naver/glink/android/sdk/ui/parent/plugfragment/FragmentView;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic c:Lcom/naver/glink/android/sdk/ui/parent/plugfragment/a;


# direct methods
.method constructor <init>(Lcom/naver/glink/android/sdk/ui/parent/plugfragment/a;Ljava/lang/String;Ljava/util/Vector;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Vector",
            "<",
            "Lcom/naver/glink/android/sdk/ui/parent/plugfragment/FragmentView;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/naver/glink/android/sdk/ui/parent/plugfragment/a$a;->c:Lcom/naver/glink/android/sdk/ui/parent/plugfragment/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/naver/glink/android/sdk/ui/parent/plugfragment/a$a;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/naver/glink/android/sdk/ui/parent/plugfragment/a$a;->b:Ljava/util/Vector;

    return-void
.end method


# virtual methods
.method a()V
    .locals 2

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/naver/glink/android/sdk/ui/parent/plugfragment/a$a;->a:Ljava/lang/String;

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/parent/plugfragment/a$a;->b:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->clear()V

    iput-object v1, p0, Lcom/naver/glink/android/sdk/ui/parent/plugfragment/a$a;->b:Ljava/util/Vector;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "BackStackRecord "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/naver/glink/android/sdk/ui/parent/plugfragment/a$a;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
