.class Lcom/android/phone/callsettings/WifiCallActivity$2;
.super Landroid/database/ContentObserver;
.source "WifiCallActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/callsettings/WifiCallActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/callsettings/WifiCallActivity;


# direct methods
.method constructor <init>(Lcom/android/phone/callsettings/WifiCallActivity;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/callsettings/WifiCallActivity$2;->this$0:Lcom/android/phone/callsettings/WifiCallActivity;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1

    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    iget-object v0, p0, Lcom/android/phone/callsettings/WifiCallActivity$2;->this$0:Lcom/android/phone/callsettings/WifiCallActivity;

    invoke-static {v0}, Lcom/android/phone/callsettings/WifiCallActivity;->-wrap2(Lcom/android/phone/callsettings/WifiCallActivity;)V

    return-void
.end method
