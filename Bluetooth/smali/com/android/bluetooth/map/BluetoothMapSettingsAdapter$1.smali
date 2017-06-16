.class Lcom/android/bluetooth/map/BluetoothMapSettingsAdapter$1;
.super Ljava/lang/Object;
.source "BluetoothMapSettingsAdapter.java"

# interfaces
.implements Landroid/widget/ExpandableListView$OnGroupExpandListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/bluetooth/map/BluetoothMapSettingsAdapter;-><init>(Landroid/app/Activity;Landroid/widget/ExpandableListView;Ljava/util/LinkedHashMap;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/bluetooth/map/BluetoothMapSettingsAdapter;


# direct methods
.method constructor <init>(Lcom/android/bluetooth/map/BluetoothMapSettingsAdapter;)V
    .locals 0

    iput-object p1, p0, Lcom/android/bluetooth/map/BluetoothMapSettingsAdapter$1;->this$0:Lcom/android/bluetooth/map/BluetoothMapSettingsAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGroupExpand(I)V
    .locals 3

    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapSettingsAdapter$1;->this$0:Lcom/android/bluetooth/map/BluetoothMapSettingsAdapter;

    invoke-static {v1}, Lcom/android/bluetooth/map/BluetoothMapSettingsAdapter;->-get2(Lcom/android/bluetooth/map/BluetoothMapSettingsAdapter;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/bluetooth/map/BluetoothMapAccountItem;

    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapSettingsAdapter$1;->this$0:Lcom/android/bluetooth/map/BluetoothMapSettingsAdapter;

    invoke-static {v1}, Lcom/android/bluetooth/map/BluetoothMapSettingsAdapter;->-get3(Lcom/android/bluetooth/map/BluetoothMapSettingsAdapter;)Ljava/util/LinkedHashMap;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_0

    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapSettingsAdapter$1;->this$0:Lcom/android/bluetooth/map/BluetoothMapSettingsAdapter;

    invoke-static {v1}, Lcom/android/bluetooth/map/BluetoothMapSettingsAdapter;->-get1(Lcom/android/bluetooth/map/BluetoothMapSettingsAdapter;)[I

    move-result-object v1

    const/4 v2, 0x1

    aput v2, v1, p1

    :cond_0
    return-void
.end method
