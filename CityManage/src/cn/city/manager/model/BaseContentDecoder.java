/**
 * 
 */
package cn.city.manager.model;

import org.json.JSONObject;

import cn.city.manager.fragment.event.BaseEvent;

/**
 * @author hpc
 *
 */
public interface BaseContentDecoder {
	public BaseEvent decode(JSONObject json);
}
