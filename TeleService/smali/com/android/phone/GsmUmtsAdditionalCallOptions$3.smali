.class Lcom/android/phone/GsmUmtsAdditionalCallOptions$3;
.super Landroid/database/ContentObserver;
.source "GsmUmtsAdditionalCallOptions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/GsmUmtsAdditionalCallOptions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/GsmUmtsAdditionalCallOptions;


# direct methods
.method constructor <init>(Lcom/android/phone/GsmUmtsAdditionalCallOptions;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions$3;->this$0:Lcom/android/phone/GsmUmtsAdditionalCallOptions;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1

    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    iget-object v0, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions$3;->this$0:Lcom/android/phone/GsmUmtsAdditionalCallOptions;

    invoke-static {v0}, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->-wrap3(Lcom/android/phone/GsmUmtsAdditionalCallOptions;)V

    return-void
.end method
