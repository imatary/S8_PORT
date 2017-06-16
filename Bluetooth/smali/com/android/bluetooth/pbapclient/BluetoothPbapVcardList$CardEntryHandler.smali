.class Lcom/android/bluetooth/pbapclient/BluetoothPbapVcardList$CardEntryHandler;
.super Ljava/lang/Object;
.source "BluetoothPbapVcardList.java"

# interfaces
.implements Lcom/android/vcard/VCardEntryHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/bluetooth/pbapclient/BluetoothPbapVcardList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "CardEntryHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/bluetooth/pbapclient/BluetoothPbapVcardList;


# direct methods
.method constructor <init>(Lcom/android/bluetooth/pbapclient/BluetoothPbapVcardList;)V
    .locals 0

    iput-object p1, p0, Lcom/android/bluetooth/pbapclient/BluetoothPbapVcardList$CardEntryHandler;->this$0:Lcom/android/bluetooth/pbapclient/BluetoothPbapVcardList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEnd()V
    .locals 0

    return-void
.end method

.method public onEntryCreated(Lcom/android/vcard/VCardEntry;)V
    .locals 1

    iget-object v0, p0, Lcom/android/bluetooth/pbapclient/BluetoothPbapVcardList$CardEntryHandler;->this$0:Lcom/android/bluetooth/pbapclient/BluetoothPbapVcardList;

    invoke-static {v0}, Lcom/android/bluetooth/pbapclient/BluetoothPbapVcardList;->-get0(Lcom/android/bluetooth/pbapclient/BluetoothPbapVcardList;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public onStart()V
    .locals 0

    return-void
.end method
