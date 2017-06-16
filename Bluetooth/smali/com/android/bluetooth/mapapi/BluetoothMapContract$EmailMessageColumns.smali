.class public interface abstract Lcom/android/bluetooth/mapapi/BluetoothMapContract$EmailMessageColumns;
.super Ljava/lang/Object;
.source "BluetoothMapContract.java"

# interfaces
.implements Landroid/provider/BaseColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/bluetooth/mapapi/BluetoothMapContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "EmailMessageColumns"
.end annotation


# static fields
.field public static final BCC_LIST:Ljava/lang/String; = "bccList"

.field public static final CC_LIST:Ljava/lang/String; = "ccList"

.field public static final HEADER_MESSAGE_ID:Ljava/lang/String; = "messageId"

.field public static final REPLY_TO_LIST:Ljava/lang/String; = "replyToList"
