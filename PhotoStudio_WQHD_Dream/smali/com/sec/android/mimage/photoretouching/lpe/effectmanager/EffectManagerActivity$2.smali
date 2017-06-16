.class Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/EffectManagerActivity$2;
.super Ljava/lang/Object;
.source "EffectManagerActivity.java"

# interfaces
.implements Lcom/sec/android/mimage/photoretouching/lpe/core/SecImaging$OnSecImagingManagerListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/EffectManagerActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/EffectManagerActivity;


# direct methods
.method constructor <init>(Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/EffectManagerActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/EffectManagerActivity$2;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/EffectManagerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLanguageChange()V
    .locals 5

    const/4 v4, 0x0

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/EffectManagerActivity$2;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/EffectManagerActivity;

    # operator++ for: Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/EffectManagerActivity;->mOnChangecount:I
    invoke-static {v0}, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/EffectManagerActivity;->access$008(Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/EffectManagerActivity;)I

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/EffectManagerActivity$2;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/EffectManagerActivity;

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/EffectManagerActivity;->gpuloader:Lcom/sec/android/mimage/photoretouching/lpe/util/GPUFilterLoader;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/EffectManagerActivity$2;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/EffectManagerActivity;

    # setter for: Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/EffectManagerActivity;->mOnChangecount:I
    invoke-static {v0, v3}, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/EffectManagerActivity;->access$002(Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/EffectManagerActivity;I)I

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/EffectManagerActivity$2;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/EffectManagerActivity;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/EffectManagerActivity;->mLangaugeChangetask:Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/EffectManagerActivity$RefreshtaskForLanguageChange;
    invoke-static {v0}, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/EffectManagerActivity;->access$100(Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/EffectManagerActivity;)Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/EffectManagerActivity$RefreshtaskForLanguageChange;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/EffectManagerActivity$2;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/EffectManagerActivity;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/EffectManagerActivity;->mLangaugeChangetask:Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/EffectManagerActivity$RefreshtaskForLanguageChange;
    invoke-static {v0}, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/EffectManagerActivity;->access$100(Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/EffectManagerActivity;)Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/EffectManagerActivity$RefreshtaskForLanguageChange;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/EffectManagerActivity$RefreshtaskForLanguageChange;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v0

    sget-object v1, Landroid/os/AsyncTask$Status;->RUNNING:Landroid/os/AsyncTask$Status;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/EffectManagerActivity$2;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/EffectManagerActivity;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/EffectManagerActivity;->mLangaugeChangetask:Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/EffectManagerActivity$RefreshtaskForLanguageChange;
    invoke-static {v0}, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/EffectManagerActivity;->access$100(Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/EffectManagerActivity;)Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/EffectManagerActivity$RefreshtaskForLanguageChange;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/EffectManagerActivity$RefreshtaskForLanguageChange;->cancel(Z)Z

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/EffectManagerActivity$2;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/EffectManagerActivity;

    # setter for: Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/EffectManagerActivity;->mLangaugeChangetask:Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/EffectManagerActivity$RefreshtaskForLanguageChange;
    invoke-static {v0, v4}, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/EffectManagerActivity;->access$102(Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/EffectManagerActivity;Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/EffectManagerActivity$RefreshtaskForLanguageChange;)Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/EffectManagerActivity$RefreshtaskForLanguageChange;

    :cond_0
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/EffectManagerActivity$2;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/EffectManagerActivity;

    new-instance v1, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/EffectManagerActivity$RefreshtaskForLanguageChange;

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/EffectManagerActivity$2;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/EffectManagerActivity;

    invoke-direct {v1, v2, v4}, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/EffectManagerActivity$RefreshtaskForLanguageChange;-><init>(Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/EffectManagerActivity;Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/EffectManagerActivity$1;)V

    # setter for: Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/EffectManagerActivity;->mLangaugeChangetask:Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/EffectManagerActivity$RefreshtaskForLanguageChange;
    invoke-static {v0, v1}, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/EffectManagerActivity;->access$102(Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/EffectManagerActivity;Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/EffectManagerActivity$RefreshtaskForLanguageChange;)Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/EffectManagerActivity$RefreshtaskForLanguageChange;

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/EffectManagerActivity$2;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/EffectManagerActivity;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/EffectManagerActivity;->mLangaugeChangetask:Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/EffectManagerActivity$RefreshtaskForLanguageChange;
    invoke-static {v0}, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/EffectManagerActivity;->access$100(Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/EffectManagerActivity;)Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/EffectManagerActivity$RefreshtaskForLanguageChange;

    move-result-object v0

    new-array v1, v3, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/EffectManagerActivity$RefreshtaskForLanguageChange;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    :cond_1
    return-void
.end method

.method public onPackageChange()V
    .locals 0

    return-void
.end method
