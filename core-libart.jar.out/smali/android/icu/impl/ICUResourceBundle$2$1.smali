.class Landroid/icu/impl/ICUResourceBundle$2$1;
.super Ljava/lang/Object;
.source "ICUResourceBundle.java"

# interfaces
.implements Landroid/icu/impl/URLHandler$URLVisitor;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/icu/impl/ICUResourceBundle$2;->run()Ljava/lang/Void;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/icu/impl/ICUResourceBundle$2;

.field final synthetic val$names:Ljava/util/Set;


# direct methods
.method constructor <init>(Landroid/icu/impl/ICUResourceBundle$2;Ljava/util/Set;)V
    .locals 0

    iput-object p1, p0, Landroid/icu/impl/ICUResourceBundle$2$1;->this$1:Landroid/icu/impl/ICUResourceBundle$2;

    iput-object p2, p0, Landroid/icu/impl/ICUResourceBundle$2$1;->val$names:Ljava/util/Set;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public visit(Ljava/lang/String;)V
    .locals 3

    const-string/jumbo v1, ".res"

    invoke-virtual {p1, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x4

    const/4 v2, 0x0

    invoke-virtual {p1, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Landroid/icu/impl/ICUResourceBundle$2$1;->val$names:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method
