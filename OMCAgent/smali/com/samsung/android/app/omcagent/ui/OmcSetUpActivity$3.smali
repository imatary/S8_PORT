.class Lcom/samsung/android/app/omcagent/ui/OmcSetUpActivity$3;
.super Ljava/lang/Object;
.source "OmcSetUpActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/omcagent/ui/OmcSetUpActivity;->loadComponent(Ljava/util/LinkedHashMap;)V
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

    iput-object p1, p0, Lcom/samsung/android/app/omcagent/ui/OmcSetUpActivity$3;->this$0:Lcom/samsung/android/app/omcagent/ui/OmcSetUpActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/omcagent/ui/OmcSetUpActivity$3;->this$0:Lcom/samsung/android/app/omcagent/ui/OmcSetUpActivity;

    invoke-virtual {v0}, Lcom/samsung/android/app/omcagent/ui/OmcSetUpActivity;->onBackPressed()V

    return-void
.end method
