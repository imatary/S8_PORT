.class Lcom/android/bluetooth/pbap/BluetoothPbapPhonebookEntryFinder$PhonebookEntryComparator;
.super Ljava/lang/Object;
.source "BluetoothPbapPhonebookEntryFinder.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/bluetooth/pbap/BluetoothPbapPhonebookEntryFinder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PhonebookEntryComparator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/android/bluetooth/pbap/BluetoothPbapPhonebookEntry;",
        ">;"
    }
.end annotation


# static fields
.field public static final COMPARE_CONTACT_ID:I = 0x1

.field public static final COMPARE_INDEX:I = 0x2

.field public static final COMPARE_NAME:I = 0x3


# instance fields
.field private mCompareType:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/bluetooth/pbap/BluetoothPbapPhonebookEntryFinder$PhonebookEntryComparator;->mCompareType:I

    return-void
.end method


# virtual methods
.method public compare(Lcom/android/bluetooth/pbap/BluetoothPbapPhonebookEntry;Lcom/android/bluetooth/pbap/BluetoothPbapPhonebookEntry;)I
    .locals 8

    const/4 v2, 0x1

    const/4 v0, 0x0

    const/4 v1, -0x1

    if-ne p1, p2, :cond_0

    return v0

    :cond_0
    if-nez p1, :cond_1

    return v1

    :cond_1
    if-nez p2, :cond_2

    return v2

    :cond_2
    iget v3, p0, Lcom/android/bluetooth/pbap/BluetoothPbapPhonebookEntryFinder$PhonebookEntryComparator;->mCompareType:I

    packed-switch v3, :pswitch_data_0

    iget-object v3, p1, Lcom/android/bluetooth/pbap/BluetoothPbapPhonebookEntry;->mName:Ljava/lang/String;

    if-nez v3, :cond_7

    return v1

    :pswitch_0
    iget-wide v4, p1, Lcom/android/bluetooth/pbap/BluetoothPbapPhonebookEntry;->mId:J

    iget-wide v6, p2, Lcom/android/bluetooth/pbap/BluetoothPbapPhonebookEntry;->mId:J

    cmp-long v3, v4, v6

    if-nez v3, :cond_3

    :goto_0
    return v0

    :cond_3
    iget-wide v4, p1, Lcom/android/bluetooth/pbap/BluetoothPbapPhonebookEntry;->mId:J

    iget-wide v6, p2, Lcom/android/bluetooth/pbap/BluetoothPbapPhonebookEntry;->mId:J

    cmp-long v0, v4, v6

    if-gez v0, :cond_4

    move v0, v1

    goto :goto_0

    :cond_4
    move v0, v2

    goto :goto_0

    :pswitch_1
    iget v3, p1, Lcom/android/bluetooth/pbap/BluetoothPbapPhonebookEntry;->mIndex:I

    iget v4, p2, Lcom/android/bluetooth/pbap/BluetoothPbapPhonebookEntry;->mIndex:I

    if-ne v3, v4, :cond_5

    :goto_1
    return v0

    :cond_5
    iget v0, p1, Lcom/android/bluetooth/pbap/BluetoothPbapPhonebookEntry;->mIndex:I

    iget v3, p2, Lcom/android/bluetooth/pbap/BluetoothPbapPhonebookEntry;->mIndex:I

    if-ge v0, v3, :cond_6

    move v0, v1

    goto :goto_1

    :cond_6
    move v0, v2

    goto :goto_1

    :cond_7
    iget-object v1, p2, Lcom/android/bluetooth/pbap/BluetoothPbapPhonebookEntry;->mName:Ljava/lang/String;

    if-nez v1, :cond_8

    return v2

    :cond_8
    iget-object v1, p1, Lcom/android/bluetooth/pbap/BluetoothPbapPhonebookEntry;->mName:Ljava/lang/String;

    iget-object v2, p2, Lcom/android/bluetooth/pbap/BluetoothPbapPhonebookEntry;->mName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    return v0

    :cond_9
    iget-object v0, p1, Lcom/android/bluetooth/pbap/BluetoothPbapPhonebookEntry;->mName:Ljava/lang/String;

    iget-object v1, p2, Lcom/android/bluetooth/pbap/BluetoothPbapPhonebookEntry;->mName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Lcom/android/bluetooth/pbap/BluetoothPbapPhonebookEntry;

    check-cast p2, Lcom/android/bluetooth/pbap/BluetoothPbapPhonebookEntry;

    invoke-virtual {p0, p1, p2}, Lcom/android/bluetooth/pbap/BluetoothPbapPhonebookEntryFinder$PhonebookEntryComparator;->compare(Lcom/android/bluetooth/pbap/BluetoothPbapPhonebookEntry;Lcom/android/bluetooth/pbap/BluetoothPbapPhonebookEntry;)I

    move-result v0

    return v0
.end method
