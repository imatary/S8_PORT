.class public abstract Landroid/hardware/location/ContextHubManager$Callback;
.super Ljava/lang/Object;
.source "ContextHubManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/location/ContextHubManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Callback"
.end annotation


# direct methods
.method protected constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract onMessageReceipt(IILandroid/hardware/location/ContextHubMessage;)V
.end method
