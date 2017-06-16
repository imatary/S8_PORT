.class public Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/EffectManagerActivity$CancelRequestReceiver;
.super Landroid/content/BroadcastReceiver;
.source "EffectManagerActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/EffectManagerActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "CancelRequestReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/EffectManagerActivity;


# direct methods
.method public constructor <init>(Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/EffectManagerActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/EffectManagerActivity$CancelRequestReceiver;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/EffectManagerActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/EffectManagerActivity$CancelRequestReceiver;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/EffectManagerActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/EffectManagerActivity;->setResult(I)V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/EffectManagerActivity$CancelRequestReceiver;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/EffectManagerActivity;

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/EffectManagerActivity;->finish()V

    return-void
.end method
