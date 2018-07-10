/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.trung.portal.springmvc.model;

/**
 *
 * @author trung Jun 14, 2018 7:38:49 AM
 */
public class NaviModel {

    private String id;
    private String hostName;
    private String recodeType;
    private String recValue;
    private int mxPreference;

    public NaviModel() {
    }

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getHostName() {
        return hostName;
    }

    public void setHostName(String hostName) {
        this.hostName = hostName;
    }

    public String getRecodeType() {
        return recodeType;
    }

    public void setRecodeType(String recodeType) {
        this.recodeType = recodeType;
    }

    public String getRecValue() {
        return recValue;
    }

    public void setRecValue(String recValue) {
        this.recValue = recValue;
    }

    public int getMxPreference() {
        return mxPreference;
    }

    public void setMxPreference(int mxPreference) {
        this.mxPreference = mxPreference;
    }

    @Override
    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("id: ").append(this.getId()).append("\n")
                .append("host: ").append(this.getHostName()).append("\n")
                .append("recodeType: ").append(this.getRecodeType()).append("\n")
                .append("recValue: ").append(this.getRecValue()).append("\n")
                .append("prio: ").append(this.getMxPreference()).append("\n");
        return sb.toString();
    }

}
