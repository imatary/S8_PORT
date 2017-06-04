.class public interface abstract Lcom/sec/samsung/gallery/lib/libinterface/SmartClipDataHelperInterface;
.super Ljava/lang/Object;
.source "SmartClipDataHelperInterface.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/samsung/gallery/lib/libinterface/SmartClipDataHelperInterface$onClipDataListenerForDetailView;,
        Lcom/sec/samsung/gallery/lib/libinterface/SmartClipDataHelperInterface$onClipDataListener;
    }
.end annotation


# virtual methods
.method public abstract setDataExtractionListener(Landroid/view/View;Z)V
.end method

.method public abstract setOnClipDataListener(Lcom/sec/samsung/gallery/lib/libinterface/SmartClipDataHelperInterface$onClipDataListener;)V
.end method

.method public abstract setOnClipDataListener(Lcom/sec/samsung/gallery/lib/libinterface/SmartClipDataHelperInterface$onClipDataListenerForDetailView;)V
.end method
