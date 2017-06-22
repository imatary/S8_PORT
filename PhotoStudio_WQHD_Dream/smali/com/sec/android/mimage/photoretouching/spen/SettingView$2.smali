.class Lcom/sec/android/mimage/photoretouching/spen/SettingView$2;
.super Ljava/lang/Object;
.source "SettingView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/mimage/photoretouching/spen/SettingView;->setEraserInfo(Lcom/samsung/android/sdk/pen/SpenSettingRemoverInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/mimage/photoretouching/spen/SettingView;

.field final synthetic val$settingInfo:Lcom/samsung/android/sdk/pen/SpenSettingRemoverInfo;


# direct methods
.method constructor <init>(Lcom/sec/android/mimage/photoretouching/spen/SettingView;Lcom/samsung/android/sdk/pen/SpenSettingRemoverInfo;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/mimage/photoretouching/spen/SettingView$2;->this$0:Lcom/sec/android/mimage/photoretouching/spen/SettingView;

    iput-object p2, p0, Lcom/sec/android/mimage/photoretouching/spen/SettingView$2;->val$settingInfo:Lcom/samsung/android/sdk/pen/SpenSettingRemoverInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/spen/SettingView$2;->this$0:Lcom/sec/android/mimage/photoretouching/spen/SettingView;

    # getter for: Lcom/sec/android/mimage/photoretouching/spen/SettingView;->mEraserSettingView:Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;
    invoke-static {v0}, Lcom/sec/android/mimage/photoretouching/spen/SettingView;->access$100(Lcom/sec/android/mimage/photoretouching/spen/SettingView;)Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/spen/SettingView$2;->val$settingInfo:Lcom/samsung/android/sdk/pen/SpenSettingRemoverInfo;

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;->setInfo(Lcom/samsung/android/sdk/pen/SpenSettingRemoverInfo;)V

    return-void
.end method
