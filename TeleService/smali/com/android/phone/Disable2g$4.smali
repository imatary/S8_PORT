.class Lcom/android/phone/Disable2g$4;
.super Landroid/database/ContentObserver;
.source "Disable2g.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/Disable2g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/Disable2g;


# direct methods
.method constructor <init>(Lcom/android/phone/Disable2g;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/Disable2g$4;->this$0:Lcom/android/phone/Disable2g;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 0

    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    return-void
.end method
