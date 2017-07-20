.class Lcom/android/phone/CallFeaturesSetting$3$1;
.super Ljava/lang/Object;
.source "CallFeaturesSetting.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/CallFeaturesSetting$3;->onRegistered(Lcom/sec/ims/ImsRegistration;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/phone/CallFeaturesSetting$3;


# direct methods
.method constructor <init>(Lcom/android/phone/CallFeaturesSetting$3;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/CallFeaturesSetting$3$1;->this$1:Lcom/android/phone/CallFeaturesSetting$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/android/phone/CallFeaturesSetting$3$1;->this$1:Lcom/android/phone/CallFeaturesSetting$3;

    iget-object v0, v0, Lcom/android/phone/CallFeaturesSetting$3;->this$0:Lcom/android/phone/CallFeaturesSetting;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/phone/CallFeaturesSetting;->-wrap7(Lcom/android/phone/CallFeaturesSetting;Z)V

    return-void
.end method
