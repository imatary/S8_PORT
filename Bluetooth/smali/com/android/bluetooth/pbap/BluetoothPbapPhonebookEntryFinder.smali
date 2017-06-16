.class public Lcom/android/bluetooth/pbap/BluetoothPbapPhonebookEntryFinder;
.super Ljava/lang/Object;
.source "BluetoothPbapPhonebookEntryFinder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/bluetooth/pbap/BluetoothPbapPhonebookEntryFinder$PhonebookEntryComparator;
    }
.end annotation


# static fields
.field public static final FIND_TYPE_CONTACT_ID_FIRST:I = 0x1

.field public static final FIND_TYPE_NAME_FIRST:I = 0x2

.field public static final LIST_ORDER_TYPE_CONTACT_ID:I = 0x1

.field public static final LIST_ORDER_TYPE_NAME:I = 0x2


# instance fields
.field mEntries:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/bluetooth/pbap/BluetoothPbapPhonebookEntry;",
            ">;"
        }
    .end annotation
.end field

.field mFindType:I

.field mListOrderType:I


# direct methods
.method public constructor <init>(Ljava/util/ArrayList;II)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/bluetooth/pbap/BluetoothPbapPhonebookEntry;",
            ">;II)V"
        }
    .end annotation

    const/4 v2, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lcom/android/bluetooth/pbap/BluetoothPbapPhonebookEntryFinder;->mListOrderType:I

    iput p3, p0, Lcom/android/bluetooth/pbap/BluetoothPbapPhonebookEntryFinder;->mFindType:I

    iput-object p1, p0, Lcom/android/bluetooth/pbap/BluetoothPbapPhonebookEntryFinder;->mEntries:Ljava/util/ArrayList;

    iget v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapPhonebookEntryFinder;->mFindType:I

    if-ne v0, v2, :cond_0

    iget v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapPhonebookEntryFinder;->mListOrderType:I

    if-eq v0, v2, :cond_0

    invoke-virtual {p1}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapPhonebookEntryFinder;->mEntries:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapPhonebookEntryFinder;->mEntries:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/bluetooth/pbap/BluetoothPbapPhonebookEntryFinder$PhonebookEntryComparator;

    invoke-direct {v1, v2}, Lcom/android/bluetooth/pbap/BluetoothPbapPhonebookEntryFinder$PhonebookEntryComparator;-><init>(I)V

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public findPhonebookEntryByContactIdFirst(JLjava/lang/String;)Lcom/android/bluetooth/pbap/BluetoothPbapPhonebookEntry;
    .locals 11

    const-wide/16 v8, 0x0

    const/4 v10, 0x0

    const/4 v0, 0x0

    const/4 v5, 0x0

    cmp-long v7, p1, v8

    if-gtz v7, :cond_2

    if-eqz p3, :cond_2

    const/4 v2, 0x0

    :goto_0
    iget-object v7, p0, Lcom/android/bluetooth/pbap/BluetoothPbapPhonebookEntryFinder;->mEntries:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v2, v7, :cond_6

    iget-object v7, p0, Lcom/android/bluetooth/pbap/BluetoothPbapPhonebookEntryFinder;->mEntries:Ljava/util/ArrayList;

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/bluetooth/pbap/BluetoothPbapPhonebookEntry;

    iget-object v0, v5, Lcom/android/bluetooth/pbap/BluetoothPbapPhonebookEntry;->mName:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    :cond_0
    if-eqz v0, :cond_1

    invoke-virtual {p3, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    return-object v5

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    cmp-long v7, p1, v8

    if-lez v7, :cond_6

    iget-object v7, p0, Lcom/android/bluetooth/pbap/BluetoothPbapPhonebookEntryFinder;->mEntries:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v6, 0x0

    add-int/lit8 v1, v3, -0x1

    :cond_3
    :goto_1
    if-gt v6, v1, :cond_6

    add-int v7, v6, v1

    div-int/lit8 v4, v7, 0x2

    iget-object v7, p0, Lcom/android/bluetooth/pbap/BluetoothPbapPhonebookEntryFinder;->mEntries:Ljava/util/ArrayList;

    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/bluetooth/pbap/BluetoothPbapPhonebookEntry;

    iget-wide v8, v5, Lcom/android/bluetooth/pbap/BluetoothPbapPhonebookEntry;->mId:J

    cmp-long v7, p1, v8

    if-nez v7, :cond_4

    return-object v5

    :cond_4
    iget-wide v8, v5, Lcom/android/bluetooth/pbap/BluetoothPbapPhonebookEntry;->mId:J

    cmp-long v7, p1, v8

    if-lez v7, :cond_5

    add-int/lit8 v6, v4, 0x1

    goto :goto_1

    :cond_5
    iget-wide v8, v5, Lcom/android/bluetooth/pbap/BluetoothPbapPhonebookEntry;->mId:J

    cmp-long v7, p1, v8

    if-gez v7, :cond_3

    add-int/lit8 v1, v4, -0x1

    goto :goto_1

    :cond_6
    return-object v10
.end method
