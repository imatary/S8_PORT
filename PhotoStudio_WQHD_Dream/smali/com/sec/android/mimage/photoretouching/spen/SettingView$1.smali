.class Lcom/sec/android/mimage/photoretouching/spen/SettingView$1;
.super Ljava/lang/Object;
.source "SettingView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/mimage/photoretouching/spen/SettingView;->setSpenPenInfo(Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/mimage/photoretouching/spen/SettingView;

.field final synthetic val$settingInfo:Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;


# direct methods
.method constructor <init>(Lcom/sec/android/mimage/photoretouching/spen/SettingView;Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/mimage/photoretouching/spen/SettingView$1;->this$0:Lcom/sec/android/mimage/photoretouching/spen/SettingView;

    iput-object p2, p0, Lcom/sec/android/mimage/photoretouching/spen/SettingView$1;->val$settingInfo:Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/spen/SettingView$1;->this$0:Lcom/sec/android/mimage/photoretouching/spen/SettingView;

    # getter for: Lcom/sec/android/mimage/photoretouching/spen/SettingView;->mPenSettingView:Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;
    invoke-static {v0}, Lcom/sec/android/mimage/photoretouching/spen/SettingView;->access$000(Lcom/sec/android/mimage/photoretouching/spen/SettingView;)Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/spen/SettingView$1;->val$settingInfo:Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->setInfo(Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;)V

    return-void
.end method
