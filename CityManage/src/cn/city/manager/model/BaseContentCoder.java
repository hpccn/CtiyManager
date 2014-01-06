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
public interface BaseContentCoder {
	public JSONObject code(BaseEvent content);
}
